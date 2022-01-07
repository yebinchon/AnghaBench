
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_t ;
typedef scalar_t__* vec3_t ;


 scalar_t__ floor (scalar_t__) ;

void VectorSnap( vec3_t v ){
 int i;
 for ( i = 0; i < 3; i++ )
 {
  v[i] = (vec_t)floor( v[i] + 0.5 );
 }
}
