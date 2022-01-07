
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;



__attribute__((used)) static int CM_SignbitsForNormal( vec3_t normal ) {
 int bits, j;

 bits = 0;
 for (j=0 ; j<3 ; j++) {
  if ( normal[j] < 0 ) {
   bits |= 1<<j;
  }
 }
 return bits;
}
