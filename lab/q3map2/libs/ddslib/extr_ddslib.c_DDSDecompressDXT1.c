
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ddsColor_t ;
typedef int ddsColorBlock_t ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ ddsBuffer_t ;


 int DDSDecodeColorBlock (unsigned int*,int *,int,unsigned int*) ;
 int DDSGetColorBlockColors (int *,int *) ;

__attribute__((used)) static int DDSDecompressDXT1( ddsBuffer_t *dds, int width, int height, unsigned char *pixels ){
 int x, y, xBlocks, yBlocks;
 unsigned int *pixel;
 ddsColorBlock_t *block;
 ddsColor_t colors[ 4 ];



 xBlocks = width / 4;
 yBlocks = height / 4;


 for ( y = 0; y < yBlocks; y++ )
 {

  block = (ddsColorBlock_t*) ( (size_t) dds->data + y * xBlocks * 8 );


  for ( x = 0; x < xBlocks; x++, block++ )
  {
   DDSGetColorBlockColors( block, colors );
   pixel = (unsigned int*) ( pixels + x * 16 + ( y * 4 ) * width * 4 );
   DDSDecodeColorBlock( pixel, block, width, (unsigned int*) colors );
  }
 }


 return 0;
}
