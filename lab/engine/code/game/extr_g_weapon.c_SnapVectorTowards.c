
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;


 scalar_t__ ceil (scalar_t__) ;
 scalar_t__ floor (scalar_t__) ;

void SnapVectorTowards( vec3_t v, vec3_t to ) {
 int i;

 for ( i = 0 ; i < 3 ; i++ ) {
  if ( to[i] <= v[i] ) {
   v[i] = floor(v[i]);
  } else {
   v[i] = ceil(v[i]);
  }
 }
}
