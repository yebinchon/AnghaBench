
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 float DotProduct (float*,float*) ;

void PM_ClipVelocity( vec3_t in, vec3_t normal, vec3_t out, float overbounce ) {
 float backoff;
 float change;
 int i;

 backoff = DotProduct (in, normal);

 if ( backoff < 0 ) {
  backoff *= overbounce;
 } else {
  backoff /= overbounce;
 }

 for ( i=0 ; i<3 ; i++ ) {
  change = normal[i]*backoff;
  out[i] = in[i] - change;
 }
}
