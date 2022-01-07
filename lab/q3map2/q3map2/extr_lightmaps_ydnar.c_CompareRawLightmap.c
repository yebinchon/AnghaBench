
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* si; } ;
typedef TYPE_2__ surfaceInfo_t ;
struct TYPE_8__ {int numLightSurfaces; int firstLightSurface; int w; int h; scalar_t__* styles; } ;
typedef TYPE_3__ rawLightmap_t ;
struct TYPE_6__ {int shader; } ;


 int MAX_LIGHTMAPS ;
 size_t* lightSurfaces ;
 TYPE_3__* rawLightmaps ;
 int strcmp (int ,int ) ;
 TYPE_2__* surfaceInfos ;

__attribute__((used)) static int CompareRawLightmap( const void *a, const void *b ){
 rawLightmap_t *alm, *blm;
 surfaceInfo_t *aInfo, *bInfo;
 int i, min, diff;



 alm = &rawLightmaps[ *( (int*) a ) ];
 blm = &rawLightmaps[ *( (int*) b ) ];


 min = ( alm->numLightSurfaces < blm->numLightSurfaces ? alm->numLightSurfaces : blm->numLightSurfaces );


 for ( i = 0; i < min; i++ )
 {

  aInfo = &surfaceInfos[ lightSurfaces[ alm->firstLightSurface + i ] ];
  bInfo = &surfaceInfos[ lightSurfaces[ blm->firstLightSurface + i ] ];


  diff = strcmp( aInfo->si->shader, bInfo->si->shader );
  if ( diff != 0 ) {
   return diff;
  }
 }


 diff = 0;
 for ( i = 0; i < MAX_LIGHTMAPS; i++ )
  diff += blm->styles[ i ] - alm->styles[ i ];
 if ( diff ) {
  return diff;
 }


 diff = ( blm->w * blm->h ) - ( alm->w * alm->h );
 if ( diff != 0 ) {
  return diff;
 }


 return 0;
}
