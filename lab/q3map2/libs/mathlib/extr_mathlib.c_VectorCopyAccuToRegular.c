
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_t ;
typedef scalar_t__* vec3_t ;
typedef scalar_t__* vec3_accu_t ;



void VectorCopyAccuToRegular( const vec3_accu_t in, vec3_t out ){
 out[0] = (vec_t) in[0];
 out[1] = (vec_t) in[1];
 out[2] = (vec_t) in[2];
}
