
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* data; } ;
typedef TYPE_1__ ddsBuffer_t ;



__attribute__((used)) static int DDSDecompressARGB8888( ddsBuffer_t *dds, int width, int height, unsigned char *pixels ){
 int x, y;
 unsigned char *in, *out;



 in = dds->data;
 out = pixels;


 for ( y = 0; y < height; y++ )
 {

  for ( x = 0; x < width; x++ )
  {
   *out++ = *in++;
   *out++ = *in++;
   *out++ = *in++;
   *out++ = *in++;
  }
 }


 return 0;
}
