
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;
typedef int qboolean ;


 int VectorClear (float*) ;
 int VectorSet (float*,float,float,float) ;
 float fabs (float) ;
 int qfalse ;
 int qtrue ;

qboolean CalcLightmapAxis( vec3_t normal, vec3_t axis ){
 vec3_t absolute;



 if ( normal[ 0 ] == 0.0f && normal[ 1 ] == 0.0f && normal[ 2 ] == 0.0f ) {
  VectorClear( axis );
  return qfalse;
 }


 absolute[ 0 ] = fabs( normal[ 0 ] );
 absolute[ 1 ] = fabs( normal[ 1 ] );
 absolute[ 2 ] = fabs( normal[ 2 ] );


 if ( absolute[ 2 ] > absolute[ 0 ] - 0.0001f && absolute[ 2 ] > absolute[ 1 ] - 0.0001f ) {
  if ( normal[ 2 ] > 0.0f ) {
   VectorSet( axis, 0.0f, 0.0f, 1.0f );
  }
  else{
   VectorSet( axis, 0.0f, 0.0f, -1.0f );
  }
 }
 else if ( absolute[ 0 ] > absolute[ 1 ] - 0.0001f && absolute[ 0 ] > absolute[ 2 ] - 0.0001f ) {
  if ( normal[ 0 ] > 0.0f ) {
   VectorSet( axis, 1.0f, 0.0f, 0.0f );
  }
  else{
   VectorSet( axis, -1.0f, 0.0f, 0.0f );
  }
 }
 else
 {
  if ( normal[ 1 ] > 0.0f ) {
   VectorSet( axis, 0.0f, 1.0f, 0.0f );
  }
  else{
   VectorSet( axis, 0.0f, -1.0f, 0.0f );
  }
 }


 return qtrue;
}
