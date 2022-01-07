
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float* fogTable; } ;


 int FOG_TABLE_SIZE ;
 TYPE_1__ tr ;

float R_FogFactor( float s, float t ) {
 float d;

 s -= 1.0/512;
 if ( s < 0 ) {
  return 0;
 }
 if ( t < 1.0/32 ) {
  return 0;
 }
 if ( t < 31.0/32 ) {
  s *= (t - 1.0f/32.0f) / (30.0f/32.0f);
 }


 s *= 8;

 if ( s > 1.0 ) {
  s = 1.0;
 }

 d = tr.fogTable[ (int)(s * (FOG_TABLE_SIZE-1)) ];

 return d;
}
