
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int width ;
typedef int byte ;


 int COPYSAMPLE (int *,int *) ;

__attribute__((used)) static void ExpandHalfTextureToGrid( byte *data, int width, int height)
{
 int x, y;

 for (y = height / 2; y > 0; y--)
 {
  byte *outbyte = data + ((y * 2 - 1) * (width) - 2) * 4;
  byte *inbyte = data + (y * (width / 2) - 1) * 4;

  for (x = width / 2; x > 0; x--)
  {
   COPYSAMPLE(outbyte, inbyte);

   outbyte -= 8;
   inbyte -= 4;
  }
 }
}
