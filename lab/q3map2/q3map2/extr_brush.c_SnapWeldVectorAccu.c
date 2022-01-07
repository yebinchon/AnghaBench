
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_accu_t ;
typedef scalar_t__* vec3_accu_t ;


 int Error (char*) ;
 scalar_t__ Q_rintAccu (scalar_t__) ;
 scalar_t__ SNAP_EPSILON ;
 scalar_t__ fabs (scalar_t__) ;

void SnapWeldVectorAccu( vec3_accu_t a, vec3_accu_t b, vec3_accu_t out ){
 int i;
 vec_accu_t ai, bi, ad, bd;

 if ( a == ((void*)0) || b == ((void*)0) || out == ((void*)0) ) {
  Error( "SnapWeldVectorAccu: NULL argument" );
 }

 for ( i = 0; i < 3; i++ )
 {
  ai = Q_rintAccu( a[i] );
  bi = Q_rintAccu( b[i] );
  ad = fabs( ai - a[i] );
  bd = fabs( bi - b[i] );

  if ( ad < bd ) {
   if ( ad < SNAP_EPSILON ) {
    out[i] = ai;
   }
   else{out[i] = a[i]; }
  }
  else
  {
   if ( bd < SNAP_EPSILON ) {
    out[i] = bi;
   }
   else{out[i] = b[i]; }
  }
 }
}
