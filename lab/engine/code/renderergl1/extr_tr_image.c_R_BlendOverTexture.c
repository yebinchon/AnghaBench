
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;



__attribute__((used)) static void R_BlendOverTexture( byte *data, int pixelCount, byte blend[4] ) {
 int i;
 int inverseAlpha;
 int premult[3];

 inverseAlpha = 255 - blend[3];
 premult[0] = blend[0] * blend[3];
 premult[1] = blend[1] * blend[3];
 premult[2] = blend[2] * blend[3];

 for ( i = 0 ; i < pixelCount ; i++, data+=4 ) {
  data[0] = ( data[0] * inverseAlpha + premult[0] ) >> 9;
  data[1] = ( data[1] * inverseAlpha + premult[1] ) >> 9;
  data[2] = ( data[2] * inverseAlpha + premult[2] ) >> 9;
 }
}
