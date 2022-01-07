
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void j_putGrayScanlineToRGB( unsigned char* jpegline, int widthPix, unsigned char* outBuf, int row ){
 int offset = row * widthPix * 4;
 int count;

 for ( count = 0; count < widthPix; count++ )
 {
  unsigned char iGray;
  unsigned char *oRed, *oBlu, *oGrn, *oAlp;


  iGray = *( jpegline + count );

  oRed = outBuf + offset + count * 4;
  oGrn = outBuf + offset + count * 4 + 1;
  oBlu = outBuf + offset + count * 4 + 2;
  oAlp = outBuf + offset + count * 4 + 3;

  *oRed = iGray;
  *oGrn = iGray;
  *oBlu = iGray;
  *oAlp = 255;
 }
}
