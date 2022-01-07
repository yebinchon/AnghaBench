
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_accu_t ;
typedef int* vec3_accu_t ;



vec_accu_t DotProductAccu( const vec3_accu_t a, const vec3_accu_t b ){
 return ( a[0] * b[0] ) + ( a[1] * b[1] ) + ( a[2] * b[2] );
}
