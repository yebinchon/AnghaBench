
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float vec_t ;
typedef float* vec3_t ;


 scalar_t__ sqrt (float) ;

vec_t VectorLength( vec3_t v ){
 int i;
 float length;

 length = 0.0f;
 for ( i = 0 ; i < 3 ; i++ )
  length += v[i] * v[i];
 length = (float)sqrt( length );

 return length;
}
