
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_accu_t ;



void CrossProductAccu( const vec3_accu_t a, const vec3_accu_t b, vec3_accu_t out ){
 out[0] = ( a[1] * b[2] ) - ( a[2] * b[1] );
 out[1] = ( a[2] * b[0] ) - ( a[0] * b[2] );
 out[2] = ( a[0] * b[1] ) - ( a[1] * b[0] );
}
