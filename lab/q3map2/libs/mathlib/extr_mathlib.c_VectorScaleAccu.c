
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_accu_t ;
typedef int* vec3_accu_t ;



void VectorScaleAccu( const vec3_accu_t in, vec_accu_t scaleFactor, vec3_accu_t out ){
 out[0] = in[0] * scaleFactor;
 out[1] = in[1] * scaleFactor;
 out[2] = in[2] * scaleFactor;
}
