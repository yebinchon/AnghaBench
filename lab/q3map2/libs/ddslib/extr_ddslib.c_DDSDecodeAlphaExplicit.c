
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned short a; scalar_t__ b; scalar_t__ g; scalar_t__ r; } ;
typedef TYPE_1__ ddsColor_t ;
struct TYPE_5__ {int * row; } ;
typedef TYPE_2__ ddsAlphaBlockExplicit_t ;


 unsigned short DDSLittleShort (int ) ;

__attribute__((used)) static void DDSDecodeAlphaExplicit( unsigned int *pixel, ddsAlphaBlockExplicit_t *alphaBlock, int width, unsigned int alphaZero ){
 int row, pix;
 unsigned short word;
 ddsColor_t color;



 color.r = 0;
 color.g = 0;
 color.b = 0;


 for ( row = 0; row < 4; row++, pixel += ( width - 4 ) )
 {
  word = DDSLittleShort( alphaBlock->row[ row ] );


  for ( pix = 0; pix < 4; pix++ )
  {

   *pixel &= alphaZero;
   color.a = word & 0x000F;
   color.a = color.a | ( color.a << 4 );
   *pixel |= *( (unsigned int*) &color );
   word >>= 4;
   pixel++;

  }
 }
}
