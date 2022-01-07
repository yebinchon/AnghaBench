
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int r; int g; int b; scalar_t__ a; } ;
typedef TYPE_1__ ddsColor_t ;
typedef int ddsColorBlock_t ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef TYPE_2__ ddsBuffer_t ;
typedef int ddsAlphaBlock3BitLinear_t ;


 int DDSDecodeAlpha3BitLinear (unsigned int*,int *,int,unsigned int) ;
 int DDSDecodeColorBlock (unsigned int*,int *,int,unsigned int*) ;
 int DDSGetColorBlockColors (int *,TYPE_1__*) ;

__attribute__((used)) static int DDSDecompressDXT5( ddsBuffer_t *dds, int width, int height, unsigned char *pixels ){
 int x, y, xBlocks, yBlocks;
 unsigned int *pixel, alphaZero;
 ddsColorBlock_t *block;
 ddsAlphaBlock3BitLinear_t *alphaBlock;
 ddsColor_t colors[ 4 ];



 xBlocks = width / 4;
 yBlocks = height / 4;


 colors[ 0 ].a = 0;
 colors[ 0 ].r = 0xFF;
 colors[ 0 ].g = 0xFF;
 colors[ 0 ].b = 0xFF;
 alphaZero = *( (unsigned int*) &colors[ 0 ] );


 for ( y = 0; y < yBlocks; y++ )
 {

  block = (ddsColorBlock_t*) ( (size_t) dds->data + y * xBlocks * 16 );


  for ( x = 0; x < xBlocks; x++, block++ )
  {

   alphaBlock = (ddsAlphaBlock3BitLinear_t*) block;


   block++;
   DDSGetColorBlockColors( block, colors );


   pixel = (unsigned int*) ( pixels + x * 16 + ( y * 4 ) * width * 4 );
   DDSDecodeColorBlock( pixel, block, width, (unsigned int*) colors );


   DDSDecodeAlpha3BitLinear( pixel, alphaBlock, width, alphaZero );
  }
 }


 return 0;
}
