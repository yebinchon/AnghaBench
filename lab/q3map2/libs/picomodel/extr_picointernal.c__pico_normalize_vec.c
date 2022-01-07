
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double picoVec_t ;
typedef double* picoVec3_t ;


 double sqrt (double) ;

picoVec_t _pico_normalize_vec( picoVec3_t vec ){
 double len, ilen;

 len = sqrt( vec[ 0 ] * vec[ 0 ] + vec[ 1 ] * vec[ 1 ] + vec[ 2 ] * vec[ 2 ] );
 if ( len == 0.0 ) {
  return 0.0;
 }
 ilen = 1.0 / len;
 vec[ 0 ] *= (picoVec_t) ilen;
 vec[ 1 ] *= (picoVec_t) ilen;
 vec[ 2 ] *= (picoVec_t) ilen;
 return (picoVec_t) len;
}
