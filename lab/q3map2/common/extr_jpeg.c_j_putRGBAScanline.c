
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void j_putRGBAScanline( unsigned char* jpegline, int widthPix, unsigned char* outBuf, int row ){
 int offset = row * widthPix * 4;
 int count;

 for ( count = 0; count < widthPix; count++ )
 {
  unsigned char iRed, iBlu, iGrn, iAlp;
  unsigned char *oRed, *oBlu, *oGrn, *oAlp;

  iRed = *( jpegline + count * 4 + 0 );
  iGrn = *( jpegline + count * 4 + 1 );
  iBlu = *( jpegline + count * 4 + 2 );
  iAlp = *( jpegline + count * 4 + 3 );

  oRed = outBuf + offset + count * 4 + 0;
  oGrn = outBuf + offset + count * 4 + 1;
  oBlu = outBuf + offset + count * 4 + 2;
  oAlp = outBuf + offset + count * 4 + 3;

  *oRed = iRed;
  *oGrn = iGrn;
  *oBlu = iBlu;

  *oAlp = 255;
 }
}
