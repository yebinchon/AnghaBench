
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int w; int h; scalar_t__* solid; } ;
typedef TYPE_1__ rawLightmap_t ;
typedef int qboolean ;
struct TYPE_6__ {int customWidth; int customHeight; int* lightBits; } ;
typedef TYPE_2__ outLightmap_t ;


 float* BSP_LUXEL (int,int,int) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean TestOutLightmapStamp( rawLightmap_t *lm, int lightmapNum, outLightmap_t *olm, int x, int y ){
 int sx, sy, ox, oy, offset;
 float *luxel;



 if ( x < 0 || y < 0 || ( x + lm->w ) > olm->customWidth || ( y + lm->h ) > olm->customHeight ) {
  return qfalse;
 }


 if ( lm->solid[ lightmapNum ] ) {
  offset = ( y * olm->customWidth ) + x;
  if ( olm->lightBits[ offset >> 3 ] & ( 1 << ( offset & 7 ) ) ) {
   return qfalse;
  }
  return qtrue;
 }


 for ( sy = 0; sy < lm->h; sy++ )
 {
  for ( sx = 0; sx < lm->w; sx++ )
  {

   luxel = BSP_LUXEL( lightmapNum, sx, sy );
   if ( luxel[ 0 ] < 0.0f ) {
    continue;
   }


   ox = x + sx;
   oy = y + sy;
   offset = ( oy * olm->customWidth ) + ox;
   if ( olm->lightBits[ offset >> 3 ] & ( 1 << ( offset & 7 ) ) ) {
    return qfalse;
   }
  }
 }


 return qtrue;
}
