
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float vec_t ;
typedef float* vec3_t ;


 scalar_t__ floor (float) ;

void VectorFSnap( vec3_t point, float snap ){
 int i;
 for ( i = 0 ; i < 3 ; i++ )
 {
  point[i] = (vec_t)floor( point[i] / snap + 0.5 ) * snap;
 }
}
