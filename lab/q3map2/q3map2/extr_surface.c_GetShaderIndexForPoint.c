
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_3__ {int w; int h; int * pixels; } ;
typedef TYPE_1__ indexMap_t ;
typedef int byte ;


 float floor (float) ;

byte GetShaderIndexForPoint( indexMap_t *im, vec3_t eMins, vec3_t eMaxs, vec3_t point ){
 int i, x, y;
 float s, t;
 vec3_t mins, maxs, size;



 if ( im == ((void*)0) ) {
  return 0;
 }
 for ( i = 0; i < 3; i++ )
 {
  mins[ i ] = eMins[ i ];
  maxs[ i ] = eMaxs[ i ];
  size[ i ] = maxs[ i ] - mins[ i ];
 }


 s = ( point[ 0 ] - mins[ 0 ] ) / size[ 0 ];
 t = ( maxs[ 1 ] - point[ 1 ] ) / size[ 1 ];


 x = s * im->w;
 y = t * im->h;
 if ( x < 0 ) {
  x = 0;
 }
 else if ( x > ( im->w - 1 ) ) {
  x = ( im->w - 1 );
 }
 if ( y < 0 ) {
  y = 0;
 }
 else if ( y > ( im->h - 1 ) ) {
  y = ( im->h - 1 );
 }



 return im->pixels[ y * im->w + x ];
}
