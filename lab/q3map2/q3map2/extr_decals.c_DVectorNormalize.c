
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double dvec_t ;
typedef double* dvec3_t ;


 int VectorClear (double*) ;
 scalar_t__ sqrt (double) ;

dvec_t DVectorNormalize( dvec3_t in, dvec3_t out ){
 dvec_t len, ilen;


 len = (dvec_t) sqrt( in[ 0 ] * in[ 0 ] + in[ 1 ] * in[ 1 ] + in[ 2 ] * in[ 2 ] );
 if ( len == 0.0 ) {
  VectorClear( out );
  return 0.0;
 }

 ilen = 1.0 / len;
 out[ 0 ] = in[ 0 ] * ilen;
 out[ 1 ] = in[ 1 ] * ilen;
 out[ 2 ] = in[ 2 ] * ilen;

 return len;
}
