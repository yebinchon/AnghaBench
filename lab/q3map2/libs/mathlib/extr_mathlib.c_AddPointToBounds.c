
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_t ;
typedef scalar_t__* vec3_t ;



void AddPointToBounds( vec3_t v, vec3_t mins, vec3_t maxs ){
 int i;
 vec_t val;

 for ( i = 0 ; i < 3 ; i++ )
 {
  val = v[i];
  if ( val < mins[i] ) {
   mins[i] = val;
  }
  if ( val > maxs[i] ) {
   maxs[i] = val;
  }
 }
}
