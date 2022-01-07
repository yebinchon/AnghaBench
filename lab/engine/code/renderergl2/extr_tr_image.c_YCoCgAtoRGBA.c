
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ byte ;


 void* CLAMP (scalar_t__,int ,int) ;

__attribute__((used)) static void YCoCgAtoRGBA(const byte *in, byte *out, int width, int height)
{
 int x, y;

 for (y = 0; y < height; y++)
 {
  const byte *inbyte = in + y * width * 4;
  byte *outbyte = out + y * width * 4;

  for (x = 0; x < width; x++)
  {
   byte _Y, Co, Cg, a;

   _Y = *inbyte++;
   Co = *inbyte++;
   Cg = *inbyte++;
   a = *inbyte++;

   *outbyte++ = CLAMP(_Y + Co - Cg, 0, 255);
   *outbyte++ = CLAMP(_Y + Cg - 128, 0, 255);
   *outbyte++ = CLAMP(_Y - Co - Cg + 256, 0, 255);
   *outbyte++ = a;
  }
 }
}
