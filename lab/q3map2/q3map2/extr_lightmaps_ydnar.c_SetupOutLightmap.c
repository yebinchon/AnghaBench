
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ customWidth; scalar_t__ customHeight; } ;
typedef TYPE_1__ rawLightmap_t ;
struct TYPE_7__ {int lightmapNum; int extLightmapNum; scalar_t__ customWidth; scalar_t__ customHeight; int freeLuxels; void* bspDirBytes; void* bspLightBytes; void* lightBits; scalar_t__ numShaders; scalar_t__ numLightmaps; } ;
typedef TYPE_2__ outLightmap_t ;
struct TYPE_8__ {scalar_t__ lightmapSize; } ;


 scalar_t__ deluxemap ;
 scalar_t__ externalLightmaps ;
 TYPE_3__* game ;
 int memset (void*,int ,int) ;
 int numBSPLightmaps ;
 void* safe_malloc (int) ;

__attribute__((used)) static void SetupOutLightmap( rawLightmap_t *lm, outLightmap_t *olm ){

 if ( lm == ((void*)0) || olm == ((void*)0) ) {
  return;
 }


 if ( ( lm->customWidth == game->lightmapSize && lm->customHeight == game->lightmapSize ) || externalLightmaps ) {
  olm->lightmapNum = numBSPLightmaps;
  numBSPLightmaps++;


  if ( deluxemap ) {
   numBSPLightmaps++;
  }
 }
 else{
  olm->lightmapNum = -3;
 }


 olm->extLightmapNum = -1;


 olm->numLightmaps = 0;
 olm->customWidth = lm->customWidth;
 olm->customHeight = lm->customHeight;
 olm->freeLuxels = olm->customWidth * olm->customHeight;
 olm->numShaders = 0;


 olm->lightBits = safe_malloc( ( olm->customWidth * olm->customHeight / 8 ) + 8 );
 memset( olm->lightBits, 0, ( olm->customWidth * olm->customHeight / 8 ) + 8 );
 olm->bspLightBytes = safe_malloc( olm->customWidth * olm->customHeight * 3 );
 memset( olm->bspLightBytes, 0, olm->customWidth * olm->customHeight * 3 );
 if ( deluxemap ) {
  olm->bspDirBytes = safe_malloc( olm->customWidth * olm->customHeight * 3 );
  memset( olm->bspDirBytes, 0, olm->customWidth * olm->customHeight * 3 );
 }
}
