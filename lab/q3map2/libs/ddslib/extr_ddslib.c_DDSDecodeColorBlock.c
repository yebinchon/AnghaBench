
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* row; } ;
typedef TYPE_1__ ddsColorBlock_t ;



__attribute__((used)) static void DDSDecodeColorBlock( unsigned int *pixel, ddsColorBlock_t *block, int width, unsigned int colors[ 4 ] ){
 int r, n;
 unsigned int bits;
 unsigned int masks[] = { 3, 12, 3 << 4, 3 << 6 };
 int shift[] = { 0, 2, 4, 6 };



 for ( r = 0; r < 4; r++, pixel += ( width - 4 ) )
 {



  for ( n = 0; n < 4; n++ )
  {
   bits = block->row[ r ] & masks[ n ];
   bits >>= shift[ n ];

   switch ( bits )
   {
   case 0:
    *pixel = colors[ 0 ];
    pixel++;
    break;

   case 1:
    *pixel = colors[ 1 ];
    pixel++;
    break;

   case 2:
    *pixel = colors[ 2 ];
    pixel++;
    break;

   case 3:
    *pixel = colors[ 3 ];
    pixel++;
    break;

   default:

    pixel++;
    break;
   }
  }
 }
}
