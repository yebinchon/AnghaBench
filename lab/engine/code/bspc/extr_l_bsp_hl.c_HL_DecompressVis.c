
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int hl_numleafs ;

void HL_DecompressVis (byte *in, byte *decompressed)
{
 int c;
 byte *out;
 int row;

 row = (hl_numleafs+7)>>3;
 out = decompressed;

 do
 {
  if (*in)
  {
   *out++ = *in++;
   continue;
  }

  c = in[1];
  in += 2;
  while (c)
  {
   *out++ = 0;
   c--;
  }
 } while (out - decompressed < row);
}
