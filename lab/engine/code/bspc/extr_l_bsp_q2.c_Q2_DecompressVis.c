
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int numclusters; } ;


 int Error (char*) ;
 TYPE_1__* dvis ;

void Q2_DecompressVis (byte *in, byte *decompressed)
{
 int c;
 byte *out;
 int row;


 row = (dvis->numclusters+7)>>3;
 out = decompressed;

 do
 {
  if (*in)
  {
   *out++ = *in++;
   continue;
  }

  c = in[1];
  if (!c)
   Error ("DecompressVis: 0 repeat");
  in += 2;
  while (c)
  {
   *out++ = 0;
   c--;
  }
 } while (out - decompressed < row);
}
