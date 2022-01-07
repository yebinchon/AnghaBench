
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int shader_t ;
struct TYPE_15__ {int stateBits; int adjustColorsForFog; TYPE_1__* bundle; void* active; scalar_t__ isDetail; } ;
typedef TYPE_2__ shaderStage_t ;
typedef void* qboolean ;
struct TYPE_20__ {int integer; } ;
struct TYPE_19__ {int integer; } ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {int (* Printf ) (int ,char*,int ) ;} ;
struct TYPE_16__ {scalar_t__ lightmapIndex; int numUnfoggedPasses; scalar_t__ sort; scalar_t__ isSky; int name; scalar_t__ polygonOffset; } ;
struct TYPE_14__ {scalar_t__ tcGen; scalar_t__ isLightmap; int * image; } ;
struct TYPE_13__ {scalar_t__ hardwareType; } ;


 int ACFF_MODULATE_ALPHA ;
 int ACFF_MODULATE_RGB ;
 int ACFF_MODULATE_RGBA ;
 int CollapseStagesToGLSL () ;
 int Com_Memset (TYPE_2__*,int ,int) ;
 int ComputeStageIteratorFunc () ;
 int ComputeVertexAttribs () ;
 scalar_t__ GLHW_PERMEDIA2 ;
 int GLS_DEPTHMASK_TRUE ;
 int GLS_DSTBLEND_BITS ;
 int GLS_DSTBLEND_ONE ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_COLOR ;
 int GLS_SRCBLEND_BITS ;
 int GLS_SRCBLEND_ONE ;
 int GLS_SRCBLEND_SRC_ALPHA ;
 int GLS_SRCBLEND_ZERO ;
 int * GeneratePermanentShader () ;
 int MAX_SHADER_STAGES ;
 int PRINT_DEVELOPER ;
 int PRINT_WARNING ;
 scalar_t__ SS_BLEND0 ;
 scalar_t__ SS_DECAL ;
 scalar_t__ SS_ENVIRONMENT ;
 scalar_t__ SS_FOG ;
 scalar_t__ SS_OPAQUE ;
 scalar_t__ SS_SEE_THROUGH ;
 scalar_t__ TCGEN_BAD ;
 scalar_t__ TCGEN_LIGHTMAP ;
 scalar_t__ TCGEN_TEXTURE ;
 int VertexLightingCollapse () ;
 TYPE_11__ glConfig ;
 int memmove (TYPE_2__*,TYPE_2__*,int) ;
 void* qfalse ;
 void* qtrue ;
 TYPE_8__* r_detailTextures ;
 TYPE_7__* r_uiFullScreen ;
 TYPE_6__* r_vertexLight ;
 TYPE_5__ ri ;
 TYPE_4__ shader ;
 TYPE_2__* stages ;
 int stub1 (int ,char*,int ) ;
 int stub2 (int ,char*,int ) ;
 int stub3 (int ,char*,int ) ;

__attribute__((used)) static shader_t *FinishShader( void ) {
 int stage;
 qboolean hasLightmapStage;
 qboolean vertexLightmap;

 hasLightmapStage = qfalse;
 vertexLightmap = qfalse;




 if ( shader.isSky ) {
  shader.sort = SS_ENVIRONMENT;
 }




 if ( shader.polygonOffset && !shader.sort ) {
  shader.sort = SS_DECAL;
 }




 for ( stage = 0; stage < MAX_SHADER_STAGES; ) {
  shaderStage_t *pStage = &stages[stage];

  if ( !pStage->active ) {
   break;
  }


  if ( !pStage->bundle[0].image[0] ) {
   ri.Printf( PRINT_WARNING, "Shader %s has a stage with no image\n", shader.name );
   pStage->active = qfalse;
   stage++;
   continue;
  }




  if ( pStage->isDetail && !r_detailTextures->integer )
  {
   int index;

   for(index = stage + 1; index < MAX_SHADER_STAGES; index++)
   {
    if(!stages[index].active)
     break;
   }

   if(index < MAX_SHADER_STAGES)
    memmove(pStage, pStage + 1, sizeof(*pStage) * (index - stage));
   else
   {
    if(stage + 1 < MAX_SHADER_STAGES)
     memmove(pStage, pStage + 1, sizeof(*pStage) * (index - stage - 1));

    Com_Memset(&stages[index - 1], 0, sizeof(*stages));
   }

   continue;
  }




  if ( pStage->bundle[0].isLightmap ) {
   if ( pStage->bundle[0].tcGen == TCGEN_BAD ) {
    pStage->bundle[0].tcGen = TCGEN_LIGHTMAP;
   }
   hasLightmapStage = qtrue;
  } else {
   if ( pStage->bundle[0].tcGen == TCGEN_BAD ) {
    pStage->bundle[0].tcGen = TCGEN_TEXTURE;
   }
  }
  if ( ( pStage->stateBits & ( GLS_SRCBLEND_BITS | GLS_DSTBLEND_BITS ) ) &&
    ( stages[0].stateBits & ( GLS_SRCBLEND_BITS | GLS_DSTBLEND_BITS ) ) ) {
   int blendSrcBits = pStage->stateBits & GLS_SRCBLEND_BITS;
   int blendDstBits = pStage->stateBits & GLS_DSTBLEND_BITS;
   if ( ( ( blendSrcBits == GLS_SRCBLEND_ONE ) && ( blendDstBits == GLS_DSTBLEND_ONE ) ) ||
    ( ( blendSrcBits == GLS_SRCBLEND_ZERO ) && ( blendDstBits == GLS_DSTBLEND_ONE_MINUS_SRC_COLOR ) ) ) {
    pStage->adjustColorsForFog = ACFF_MODULATE_RGB;
   }

   else if ( ( blendSrcBits == GLS_SRCBLEND_SRC_ALPHA ) && ( blendDstBits == GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ) )
   {
    pStage->adjustColorsForFog = ACFF_MODULATE_ALPHA;
   }

   else if ( ( blendSrcBits == GLS_SRCBLEND_ONE ) && ( blendDstBits == GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ) )
   {
    pStage->adjustColorsForFog = ACFF_MODULATE_RGBA;
   } else {

   }


   if ( !shader.sort ) {

    if ( pStage->stateBits & GLS_DEPTHMASK_TRUE ) {
     shader.sort = SS_SEE_THROUGH;
    } else {
     shader.sort = SS_BLEND0;
    }
   }
  }

  stage++;
 }



 if ( !shader.sort ) {
  shader.sort = SS_OPAQUE;
 }




 if ( stage > 1 && ( (r_vertexLight->integer && !r_uiFullScreen->integer) || glConfig.hardwareType == GLHW_PERMEDIA2 ) ) {
  VertexLightingCollapse();
  hasLightmapStage = qfalse;
 }




 stage = CollapseStagesToGLSL();

 if ( shader.lightmapIndex >= 0 && !hasLightmapStage ) {
  if (vertexLightmap) {
   ri.Printf( PRINT_DEVELOPER, "WARNING: shader '%s' has VERTEX forced lightmap!\n", shader.name );
  } else {
   ri.Printf( PRINT_DEVELOPER, "WARNING: shader '%s' has lightmap but no lightmap stage!\n", shader.name );


  }
 }





 shader.numUnfoggedPasses = stage;


 if (stage == 0 && !shader.isSky)
  shader.sort = SS_FOG;


 ComputeStageIteratorFunc();


 ComputeVertexAttribs();

 return GeneratePermanentShader();
}
