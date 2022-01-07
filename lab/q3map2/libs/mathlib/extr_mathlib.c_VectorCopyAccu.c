
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vec3_accu_t ;



void VectorCopyAccu( const vec3_accu_t in, vec3_accu_t out ){
 out[0] = in[0];
 out[1] = in[1];
 out[2] = in[2];
}
