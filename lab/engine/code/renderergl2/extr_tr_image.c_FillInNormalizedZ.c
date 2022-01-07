
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* byte ;


 void* FloatToOffsetByte (float) ;
 float OffsetByteToFloat (void*) ;
 scalar_t__ sqrt (float) ;

__attribute__((used)) static void FillInNormalizedZ(const byte *in, byte *out, int width, int height)
{
 int x, y;

 for (y = 0; y < height; y++)
 {
  const byte *inbyte = in + y * width * 4;
  byte *outbyte = out + y * width * 4;

  for (x = 0; x < width; x++)
  {
   byte nx, ny, nz, h;
   float fnx, fny, fll, fnz;

   nx = *inbyte++;
   ny = *inbyte++;
   inbyte++;
   h = *inbyte++;

   fnx = OffsetByteToFloat(nx);
   fny = OffsetByteToFloat(ny);
   fll = 1.0f - fnx * fnx - fny * fny;
   if (fll >= 0.0f)
    fnz = (float)sqrt(fll);
   else
    fnz = 0.0f;

   nz = FloatToOffsetByte(fnz);

   *outbyte++ = nx;
   *outbyte++ = ny;
   *outbyte++ = nz;
   *outbyte++ = h;
  }
 }
}
