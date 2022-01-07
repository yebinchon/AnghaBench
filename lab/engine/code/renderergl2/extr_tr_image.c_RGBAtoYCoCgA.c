
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;



__attribute__((used)) static void RGBAtoYCoCgA(const byte *in, byte *out, int width, int height)
{
 int x, y;

 for (y = 0; y < height; y++)
 {
  const byte *inbyte = in + y * width * 4;
  byte *outbyte = out + y * width * 4;

  for (x = 0; x < width; x++)
  {
   byte r, g, b, a, rb2;

   r = *inbyte++;
   g = *inbyte++;
   b = *inbyte++;
   a = *inbyte++;
   rb2 = (r + b) >> 1;

   *outbyte++ = (g + rb2) >> 1;
   *outbyte++ = (r - b + 256) >> 1;
   *outbyte++ = (g - rb2 + 256) >> 1;
   *outbyte++ = a;
  }
 }
}
