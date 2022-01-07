
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;
typedef int qboolean ;


 float fabs (scalar_t__) ;
 int qfalse ;
 int qtrue ;

qboolean VectorCompareExt( vec3_t n1, vec3_t n2, float epsilon ){
 int i;



 for ( i = 0; i < 3; i++ )
  if ( fabs( n1[ i ] - n2[ i ] ) > epsilon ) {
   return qfalse;
  }
 return qtrue;
}
