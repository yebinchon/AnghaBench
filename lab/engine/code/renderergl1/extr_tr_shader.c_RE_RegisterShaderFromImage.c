
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int lightmapIndex; int index; int name; scalar_t__ defaultShader; struct TYPE_9__* next; } ;
typedef TYPE_2__ shader_t ;
typedef int qhandle_t ;
typedef int qboolean ;
typedef int image_t ;
struct TYPE_12__ {int lightmapIndex; void* needsColor; void* needsST2; void* needsST1; void* needsNormal; } ;
struct TYPE_11__ {int stateBits; void* rgbGen; void* active; TYPE_1__* bundle; int alphaGen; } ;
struct TYPE_10__ {int numLightmaps; int ** lightmaps; int * whiteImage; } ;
struct TYPE_8__ {int ** image; void* isLightmap; } ;


 int AGEN_SKIP ;
 int AGEN_VERTEX ;
 void* CGEN_EXACT_VERTEX ;
 void* CGEN_IDENTITY ;
 void* CGEN_IDENTITY_LIGHTING ;
 void* CGEN_LIGHTING_DIFFUSE ;
 void* CGEN_VERTEX ;
 int FILE_HASH_SIZE ;
 TYPE_2__* FinishShader () ;
 void* GLS_DEFAULT ;
 int GLS_DEPTHTEST_DISABLE ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ;
 int GLS_DSTBLEND_ZERO ;
 int GLS_SRCBLEND_DST_COLOR ;
 int GLS_SRCBLEND_SRC_ALPHA ;
 int InitShader (char const*,int) ;
 int LIGHTMAP_2D ;
 int LIGHTMAP_BY_VERTEX ;
 int LIGHTMAP_NONE ;
 int LIGHTMAP_WHITEIMAGE ;
 int Q_stricmp (int ,char const*) ;
 int generateHashValue (char const*,int ) ;
 TYPE_2__** hashTable ;
 void* qtrue ;
 TYPE_5__ shader ;
 TYPE_4__* stages ;
 TYPE_3__ tr ;

qhandle_t RE_RegisterShaderFromImage(const char *name, int lightmapIndex, image_t *image, qboolean mipRawImage) {
 int hash;
 shader_t *sh;

 hash = generateHashValue(name, FILE_HASH_SIZE);




 if ( lightmapIndex >= tr.numLightmaps ) {
  lightmapIndex = LIGHTMAP_WHITEIMAGE;
 }




 for (sh=hashTable[hash]; sh; sh=sh->next) {




  if ( (sh->lightmapIndex == lightmapIndex || sh->defaultShader) &&

   !Q_stricmp(sh->name, name)) {

   return sh->index;
  }
 }

 InitShader( name, lightmapIndex );


 shader.needsNormal = qtrue;
 shader.needsST1 = qtrue;
 shader.needsST2 = qtrue;
 shader.needsColor = qtrue;




 if ( shader.lightmapIndex == LIGHTMAP_NONE ) {

  stages[0].bundle[0].image[0] = image;
  stages[0].active = qtrue;
  stages[0].rgbGen = CGEN_LIGHTING_DIFFUSE;
  stages[0].stateBits = GLS_DEFAULT;
 } else if ( shader.lightmapIndex == LIGHTMAP_BY_VERTEX ) {

  stages[0].bundle[0].image[0] = image;
  stages[0].active = qtrue;
  stages[0].rgbGen = CGEN_EXACT_VERTEX;
  stages[0].alphaGen = AGEN_SKIP;
  stages[0].stateBits = GLS_DEFAULT;
 } else if ( shader.lightmapIndex == LIGHTMAP_2D ) {

  stages[0].bundle[0].image[0] = image;
  stages[0].active = qtrue;
  stages[0].rgbGen = CGEN_VERTEX;
  stages[0].alphaGen = AGEN_VERTEX;
  stages[0].stateBits = GLS_DEPTHTEST_DISABLE |
     GLS_SRCBLEND_SRC_ALPHA |
     GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA;
 } else if ( shader.lightmapIndex == LIGHTMAP_WHITEIMAGE ) {

  stages[0].bundle[0].image[0] = tr.whiteImage;
  stages[0].active = qtrue;
  stages[0].rgbGen = CGEN_IDENTITY_LIGHTING;
  stages[0].stateBits = GLS_DEFAULT;

  stages[1].bundle[0].image[0] = image;
  stages[1].active = qtrue;
  stages[1].rgbGen = CGEN_IDENTITY;
  stages[1].stateBits |= GLS_SRCBLEND_DST_COLOR | GLS_DSTBLEND_ZERO;
 } else {

  stages[0].bundle[0].image[0] = tr.lightmaps[shader.lightmapIndex];
  stages[0].bundle[0].isLightmap = qtrue;
  stages[0].active = qtrue;
  stages[0].rgbGen = CGEN_IDENTITY;

  stages[0].stateBits = GLS_DEFAULT;

  stages[1].bundle[0].image[0] = image;
  stages[1].active = qtrue;
  stages[1].rgbGen = CGEN_IDENTITY;
  stages[1].stateBits |= GLS_SRCBLEND_DST_COLOR | GLS_DSTBLEND_ZERO;
 }

 sh = FinishShader();
  return sh->index;
}
