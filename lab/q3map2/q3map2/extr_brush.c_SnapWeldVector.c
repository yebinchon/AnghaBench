
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_t ;
typedef scalar_t__* vec3_t ;


 scalar_t__ Q_rint (scalar_t__) ;
 scalar_t__ SNAP_EPSILON ;
 scalar_t__ fabs (scalar_t__) ;

void SnapWeldVector( vec3_t a, vec3_t b, vec3_t out ){
 int i;
 vec_t ai, bi, outi;



 if ( a == ((void*)0) || b == ((void*)0) || out == ((void*)0) ) {
  return;
 }


 for ( i = 0; i < 3; i++ )
 {

  ai = Q_rint( a[ i ] );
  bi = Q_rint( b[ i ] );


  if ( ai == a[ i ] ) {
   out[ i ] = a[ i ];
  }
  else if ( bi == b[ i ] ) {
   out[ i ] = b[ i ];
  }


  else if ( fabs( ai - a[ i ] ) < fabs( bi - b[ i ] ) ) {
   out[ i ] = a[ i ];
  }
  else{
   out[ i ] = b[ i ];
  }


  outi = Q_rint( out[ i ] );
  if ( fabs( outi - out[ i ] ) <= SNAP_EPSILON ) {
   out[ i ] = outi;
  }
 }
}
