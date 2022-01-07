
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;
typedef int qboolean ;


 scalar_t__ EQUAL_EPSILON ;
 scalar_t__ fabs (scalar_t__) ;
 int qfalse ;
 int qtrue ;

qboolean VectorCompare( vec3_t v1, vec3_t v2 ){
 int i;

 for ( i = 0 ; i < 3 ; i++ )
  if ( fabs( v1[i] - v2[i] ) > EQUAL_EPSILON ) {
   return qfalse;
  }

 return qtrue;
}
