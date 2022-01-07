
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_accu_t ;
typedef int* vec3_accu_t ;


 int sqrt (int) ;

vec_accu_t VectorLengthAccu( const vec3_accu_t v ){
 return (vec_accu_t) sqrt( ( v[0] * v[0] ) + ( v[1] * v[1] ) + ( v[2] * v[2] ) );
}
