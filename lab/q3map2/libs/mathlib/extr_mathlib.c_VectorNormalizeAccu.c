
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_accu_t ;
typedef int* vec3_accu_t ;


 int VectorClear (int*) ;
 scalar_t__ sqrt (int) ;

vec_accu_t VectorNormalizeAccu( const vec3_accu_t in, vec3_accu_t out ){





 vec_accu_t length;

 length = (vec_accu_t) sqrt( ( in[0] * in[0] ) + ( in[1] * in[1] ) + ( in[2] * in[2] ) );
 if ( length == 0 ) {
  VectorClear( out );
  return 0;
 }

 out[0] = in[0] / length;
 out[1] = in[1] / length;
 out[2] = in[2] / length;

 return length;
}
