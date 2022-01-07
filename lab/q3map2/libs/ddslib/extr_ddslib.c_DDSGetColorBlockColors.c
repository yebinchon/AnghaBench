
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int a; unsigned char b; unsigned char g; unsigned char r; } ;
typedef TYPE_1__ ddsColor_t ;
struct TYPE_6__ {scalar_t__* colors; } ;
typedef TYPE_2__ ddsColorBlock_t ;


 unsigned short DDSLittleShort (scalar_t__) ;

__attribute__((used)) static void DDSGetColorBlockColors( ddsColorBlock_t *block, ddsColor_t colors[ 4 ] ){
 unsigned short word;



 word = DDSLittleShort( block->colors[ 0 ] );
 colors[ 0 ].a = 0xff;


 colors[ 0 ].b = (unsigned char) word;
 colors[ 0 ].b <<= 3;
 colors[ 0 ].b |= ( colors[ 0 ].b >> 5 );
 word >>= 5;
 colors[ 0 ].g = (unsigned char) word;
 colors[ 0 ].g <<= 2;
 colors[ 0 ].g |= ( colors[ 0 ].g >> 5 );
 word >>= 6;
 colors[ 0 ].r = (unsigned char) word;
 colors[ 0 ].r <<= 3;
 colors[ 0 ].r |= ( colors[ 0 ].r >> 5 );


 word = DDSLittleShort( block->colors[ 1 ] );
 colors[ 1 ].a = 0xff;


 colors[ 1 ].b = (unsigned char) word;
 colors[ 1 ].b <<= 3;
 colors[ 1 ].b |= ( colors[ 1 ].b >> 5 );
 word >>= 5;
 colors[ 1 ].g = (unsigned char) word;
 colors[ 1 ].g <<= 2;
 colors[ 1 ].g |= ( colors[ 1 ].g >> 5 );
 word >>= 6;
 colors[ 1 ].r = (unsigned char) word;
 colors[ 1 ].r <<= 3;
 colors[ 1 ].r |= ( colors[ 1 ].r >> 5 );


 if ( block->colors[ 0 ] > block->colors[ 1 ] ) {





  word = ( (unsigned short) colors[ 0 ].r * 2 + (unsigned short) colors[ 1 ].r ) / 3;


  colors[ 2 ].r = (unsigned char) word;
  word = ( (unsigned short) colors[ 0 ].g * 2 + (unsigned short) colors[ 1 ].g ) / 3;
  colors[ 2 ].g = (unsigned char) word;
  word = ( (unsigned short) colors[ 0 ].b * 2 + (unsigned short) colors[ 1 ].b ) / 3;
  colors[ 2 ].b = (unsigned char) word;
  colors[ 2 ].a = 0xff;

  word = ( (unsigned short) colors[ 0 ].r + (unsigned short) colors[ 1 ].r * 2 ) / 3;
  colors[ 3 ].r = (unsigned char) word;
  word = ( (unsigned short) colors[ 0 ].g + (unsigned short) colors[ 1 ].g * 2 ) / 3;
  colors[ 3 ].g = (unsigned char) word;
  word = ( (unsigned short) colors[ 0 ].b + (unsigned short) colors[ 1 ].b * 2 ) / 3;
  colors[ 3 ].b = (unsigned char) word;
  colors[ 3 ].a = 0xff;
 }
 else
 {






  word = ( (unsigned short) colors[ 0 ].r + (unsigned short) colors[ 1 ].r ) / 2;
  colors[ 2 ].r = (unsigned char) word;
  word = ( (unsigned short) colors[ 0 ].g + (unsigned short) colors[ 1 ].g ) / 2;
  colors[ 2 ].g = (unsigned char) word;
  word = ( (unsigned short) colors[ 0 ].b + (unsigned short) colors[ 1 ].b ) / 2;
  colors[ 2 ].b = (unsigned char) word;
  colors[ 2 ].a = 0xff;


  colors[ 3 ].r = 0x00;
  colors[ 3 ].g = 0xff;
  colors[ 3 ].b = 0xff;
  colors[ 3 ].a = 0x00;
 }
}
