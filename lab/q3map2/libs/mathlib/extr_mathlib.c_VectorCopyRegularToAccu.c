
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_accu_t ;
typedef scalar_t__* vec3_t ;
typedef scalar_t__* vec3_accu_t ;



void VectorCopyRegularToAccu( const vec3_t in, vec3_accu_t out ){
 out[0] = (vec_accu_t) in[0];
 out[1] = (vec_accu_t) in[1];
 out[2] = (vec_accu_t) in[2];
}
