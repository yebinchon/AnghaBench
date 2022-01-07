
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {int overbrightBits; } ;


 TYPE_2__* r_mapOverBrightBits ;
 TYPE_1__ tr ;

__attribute__((used)) static void R_ColorShiftLightingBytes( byte in[4], byte out[4] ) {
 int shift, r, g, b;


 shift = r_mapOverBrightBits->integer - tr.overbrightBits;


 r = in[0] << shift;
 g = in[1] << shift;
 b = in[2] << shift;


 if ( ( r | g | b ) > 255 ) {
  int max;

  max = r > g ? r : g;
  max = max > b ? max : b;
  r = r * 255 / max;
  g = g * 255 / max;
  b = b * 255 / max;
 }

 out[0] = r;
 out[1] = g;
 out[2] = b;
 out[3] = in[3];
}
