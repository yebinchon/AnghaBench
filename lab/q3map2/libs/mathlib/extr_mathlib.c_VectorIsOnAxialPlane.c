
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double* vec3_t ;
typedef int qboolean ;


 int qfalse ;
 int qtrue ;

qboolean VectorIsOnAxialPlane( vec3_t v ){
 int i;

 for ( i = 0; i < 3; i++ )
 {
  if ( v[i] == 0.0 ) {

   return qtrue;
  }
 }

 return qfalse;
}
