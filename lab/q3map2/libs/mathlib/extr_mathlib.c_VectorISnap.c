
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int* vec3_t ;


 scalar_t__ floor (int) ;

void VectorISnap( vec3_t point, int snap ){
 int i;
 for ( i = 0 ; i < 3 ; i++ )
 {
  point[i] = (vec_t)floor( point[i] / snap + 0.5 ) * snap;
 }
}
