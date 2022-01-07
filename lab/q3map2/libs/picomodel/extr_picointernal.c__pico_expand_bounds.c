
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* picoVec3_t ;



void _pico_expand_bounds( picoVec3_t p, picoVec3_t mins, picoVec3_t maxs ){
 int i;
 for ( i = 0; i < 3; i++ )
 {
  float value = p[i];
  if ( value < mins[i] ) {
   mins[i] = value;
  }
  if ( value > maxs[i] ) {
   maxs[i] = value;
  }
 }
}
