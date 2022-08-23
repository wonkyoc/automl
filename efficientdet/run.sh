#!/bin/bash

coefficient_list=(0 1 2 3 4 5 6 7)
coefficient_list=(0)


IMG_PATH=$HOME/data/argoverse/sid2
for coefficient in "${coefficient_list[@]}"; do
    OUT_PATH=output/sid2_d${coefficient}
    mkdir -p $OUT_PATH
    python model_inspect.py --runmode=saved_model_infer \
        --model_name=efficientdet-d${coefficient}   \
        --saved_model_dir=saved_models/efficientdet-d${coefficient}    \
        --input_image=$IMG_PATH/*jpg \
        --output_image_dir=$OUT_PATH \
        --trace_filename=$OUT_PATH/trace.json
done

#IMG_PATH=$HOME/data/argoverse/sid2_left
#for coefficient in "${coefficient_list[@]}"; do
#    OUT_PATH=output/sid2_left_d${coefficient}
#    mkdir -p $OUT_PATH
#    python model_inspect.py --runmode=saved_model_infer \
#        --model_name=efficientdet-d${coefficient}   \
#        --saved_model_dir=saved_models/efficientdet-d${coefficient}    \
#        --input_image=$IMG_PATH/*jpg \
#        --output_image_dir=$OUT_PATH \
#        --trace_filename=$OUT_PATH/trace.json
#done
#
#IMG_PATH=$HOME/data/argoverse/sid2_right
#for coefficient in "${coefficient_list[@]}"; do
#    OUT_PATH=output/sid2_right_d${coefficient}
#    mkdir -p $OUT_PATH
#    python model_inspect.py --runmode=saved_model_infer \
#        --model_name=efficientdet-d${coefficient}   \
#        --saved_model_dir=saved_models/efficientdet-d${coefficient}    \
#        --input_image=$IMG_PATH/*jpg \
#        --output_image_dir=$OUT_PATH \
#        --trace_filename=$OUT_PATH/trace.json
#done

#IMG_PATH=$HOME/data/argoverse/sid2_3x3_1.0
#for coefficient in "${coefficient_list[@]}"; do
#    OUT_PATH=output/sid2_3x3_1.0_d${coefficient}
#    mkdir -p $OUT_PATH
#    python model_inspect.py --runmode=saved_model_infer \
#        --model_name=efficientdet-d${coefficient}   \
#        --saved_model_dir=saved_models/efficientdet-d${coefficient}    \
#        --input_image=$IMG_PATH/*jpg \
#        --output_image_dir=$OUT_PATH \
#        --trace_filename=$OUT_PATH/trace.json
#done
#
#IMG_PATH=$HOME/data/argoverse/sid2_3x3_1.2
#for coefficient in "${coefficient_list[@]}"; do
#    OUT_PATH=output/sid2_3x3_1.2_d${coefficient}
#    mkdir -p $OUT_PATH
#    python model_inspect.py --runmode=saved_model_infer \
#        --model_name=efficientdet-d${coefficient}   \
#        --saved_model_dir=saved_models/efficientdet-d${coefficient}    \
#        --input_image=$IMG_PATH/*jpg \
#        --output_image_dir=$OUT_PATH \
#        --trace_filename=$OUT_PATH/trace.json
#done
#
#
#IMG_PATH=$HOME/data/argoverse/sid2_3x3_filtered
#for coefficient in "${coefficient_list[@]}"; do
#    OUT_PATH=output/sid2_3x3_filtered_d${coefficient}
#    mkdir -p $OUT_PATH
#    python model_inspect.py --runmode=saved_model_infer \
#        --model_name=efficientdet-d${coefficient}   \
#        --saved_model_dir=saved_models/efficientdet-d${coefficient}    \
#        --input_image=$IMG_PATH/*jpg \
#        --output_image_dir=$OUT_PATH \
#        --trace_filename=$OUT_PATH/trace.json
#done
