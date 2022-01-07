
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double* vec3_t ;
typedef scalar_t__ qboolean ;


 int VectorClear (double*) ;
 int VectorNormalize (double*,double*) ;
 double fabs (double) ;
 double normalEpsilon ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

qboolean SnapNormal( vec3_t normal ){
 int i;
 for ( i = 0; i < 3; i++ )
 {
  if ( fabs( normal[ i ] - 1 ) < normalEpsilon ) {
   VectorClear( normal );
   normal[ i ] = 1;
   return qtrue;
  }
  if ( fabs( normal[ i ] - -1 ) < normalEpsilon ) {
   VectorClear( normal );
   normal[ i ] = -1;
   return qtrue;
  }
 }
 return qfalse;

}
