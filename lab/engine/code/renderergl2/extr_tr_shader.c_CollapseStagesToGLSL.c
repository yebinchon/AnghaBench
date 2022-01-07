
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int stateBits; int alphaGen; scalar_t__ type; scalar_t__ rgbGen; int glslShaderIndex; TYPE_1__* bundle; int glslShaderGroup; scalar_t__ adjustColorsForFog; void* active; } ;
typedef TYPE_2__ shaderStage_t ;
typedef void* qboolean ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {scalar_t__ numDeforms; } ;
struct TYPE_13__ {int lightallShader; int whiteImage; } ;
struct TYPE_11__ {scalar_t__ tcGen; scalar_t__ numTexMods; void* isLightmap; int * image; } ;




 scalar_t__ CGEN_EXACT_VERTEX_LIT ;
 scalar_t__ CGEN_LIGHTING_DIFFUSE ;
 scalar_t__ CGEN_VERTEX_LIT ;
 int CollapseStagesToLightall (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,void*,void*,void*,void*) ;
 int GLS_DSTBLEND_BITS ;
 int GLS_DSTBLEND_SRC_COLOR ;
 int GLS_DSTBLEND_ZERO ;
 int GLS_SRCBLEND_BITS ;
 int GLS_SRCBLEND_DST_COLOR ;
 int GLS_SRCBLEND_ZERO ;
 int LIGHTDEF_USE_LIGHTMAP ;
 int LIGHTDEF_USE_LIGHT_VECTOR ;
 int LIGHTDEF_USE_TCGEN_AND_TCMOD ;
 int MAX_SHADER_STAGES ;




 size_t TB_DIFFUSEMAP ;
 size_t TB_LIGHTMAP ;




 void* qfalse ;
 void* qtrue ;
 TYPE_6__* r_sunlightMode ;
 TYPE_5__ shader ;
 TYPE_2__* stages ;
 TYPE_3__ tr ;

__attribute__((used)) static int CollapseStagesToGLSL(void)
{
 int i, j, numStages;
 qboolean skip = qfalse;


 if (shader.numDeforms != 0)
 {
  skip = qtrue;
 }

 if (!skip)
 {


  if (stages[0].active && stages[0].bundle[0].tcGen == 130 && stages[1].active)
  {
   int blendBits = stages[1].stateBits & ( GLS_DSTBLEND_BITS | GLS_SRCBLEND_BITS );

   if (blendBits == (GLS_DSTBLEND_SRC_COLOR | GLS_SRCBLEND_ZERO)
    || blendBits == (GLS_DSTBLEND_ZERO | GLS_SRCBLEND_DST_COLOR))
   {
    int stateBits0 = stages[0].stateBits;
    int stateBits1 = stages[1].stateBits;
    shaderStage_t swapStage;

    swapStage = stages[0];
    stages[0] = stages[1];
    stages[1] = swapStage;

    stages[0].stateBits = stateBits0;
    stages[1].stateBits = stateBits1;
   }
  }
 }

 if (!skip)
 {

  for (i = 0; i < MAX_SHADER_STAGES; i++)
  {
   shaderStage_t *pStage = &stages[i];

   if (!pStage->active)
    continue;

   if (pStage->adjustColorsForFog)
   {
    skip = qtrue;
    break;
   }

   if (pStage->bundle[0].tcGen == 130)
   {
    int blendBits = pStage->stateBits & ( GLS_DSTBLEND_BITS | GLS_SRCBLEND_BITS );

    if (blendBits != (GLS_DSTBLEND_SRC_COLOR | GLS_SRCBLEND_ZERO)
     && blendBits != (GLS_DSTBLEND_ZERO | GLS_SRCBLEND_DST_COLOR))
    {
     skip = qtrue;
     break;
    }
   }

   switch(pStage->bundle[0].tcGen)
   {
    case 129:
    case 130:
    case 131:
    case 128:
     break;
    default:
     skip = qtrue;
     break;
   }

   switch(pStage->alphaGen)
   {
    case 137:
    case 136:
     skip = qtrue;
     break;
    default:
     break;
   }
  }
 }

 if (!skip)
 {
  qboolean usedLightmap = qfalse;

  for (i = 0; i < MAX_SHADER_STAGES; i++)
  {
   shaderStage_t *pStage = &stages[i];
   shaderStage_t *diffuse, *normal, *specular, *lightmap;
   qboolean parallax, tcgen, diffuselit, vertexlit;

   if (!pStage->active)
    continue;


   if (pStage->type != 135)
    continue;


   if (pStage->bundle[0].tcGen == 130)
    continue;

   diffuse = pStage;
   normal = ((void*)0);
   parallax = qfalse;
   specular = ((void*)0);
   lightmap = ((void*)0);


   for (j = i + 1; j < MAX_SHADER_STAGES; j++)
   {
    shaderStage_t *pStage2 = &stages[j];

    if (!pStage2->active)
     continue;

    switch(pStage2->type)
    {
     case 134:
      if (!normal)
      {
       normal = pStage2;
      }
      break;

     case 133:
      if (!normal)
      {
       normal = pStage2;
       parallax = qtrue;
      }
      break;

     case 132:
      if (!specular)
      {
       specular = pStage2;
      }
      break;

     case 135:
      if (pStage2->bundle[0].tcGen == 130)
      {
       int blendBits = pStage->stateBits & ( GLS_DSTBLEND_BITS | GLS_SRCBLEND_BITS );



       if (!usedLightmap || (blendBits != (GLS_DSTBLEND_SRC_COLOR | GLS_SRCBLEND_ZERO)
        && blendBits != (GLS_DSTBLEND_ZERO | GLS_SRCBLEND_DST_COLOR)))
       {
        lightmap = pStage2;
        usedLightmap = qtrue;
       }
      }
      break;

     default:
      break;
    }
   }

   tcgen = qfalse;
   if (diffuse->bundle[0].tcGen == 131
       || diffuse->bundle[0].tcGen == 130
       || diffuse->bundle[0].tcGen == 128)
   {
    tcgen = qtrue;
   }

   diffuselit = qfalse;
   if (diffuse->rgbGen == CGEN_LIGHTING_DIFFUSE)
   {
    diffuselit = qtrue;
   }

   vertexlit = qfalse;
   if (diffuse->rgbGen == CGEN_VERTEX_LIT || diffuse->rgbGen == CGEN_EXACT_VERTEX_LIT)
   {
    vertexlit = qtrue;
   }

   CollapseStagesToLightall(diffuse, normal, specular, lightmap, diffuselit, vertexlit, parallax, tcgen);
  }


  for (i = 0; i < MAX_SHADER_STAGES; i++)
  {
   shaderStage_t *pStage = &stages[i];

   if (!pStage->active)
    continue;

   if (pStage->bundle[0].tcGen == 130)
   {
    pStage->active = qfalse;
   }
  }
 }


 for (i = 0; i < MAX_SHADER_STAGES; i++)
 {
  shaderStage_t *pStage = &stages[i];

  if (!pStage->active)
   continue;

  if (pStage->type == 134)
  {
   pStage->active = qfalse;
  }

  if (pStage->type == 133)
  {
   pStage->active = qfalse;
  }

  if (pStage->type == 132)
  {
   pStage->active = qfalse;
  }
 }


 numStages = 0;
 for (i = 0; i < MAX_SHADER_STAGES; i++)
 {
  if (!stages[i].active)
   continue;

  if (i == numStages)
  {
   numStages++;
   continue;
  }

  stages[numStages] = stages[i];
  stages[i].active = qfalse;
  numStages++;
 }



 if (r_sunlightMode->integer && shader.numDeforms == 0)
 {
  for (i = 0; i < MAX_SHADER_STAGES; i++)
  {
   shaderStage_t *pStage = &stages[i];

   if (!pStage->active)
    continue;

   if (pStage->adjustColorsForFog)
    continue;

   if (pStage->bundle[TB_DIFFUSEMAP].tcGen == 130)
   {
    pStage->glslShaderGroup = tr.lightallShader;
    pStage->glslShaderIndex = LIGHTDEF_USE_LIGHTMAP;
    pStage->bundle[TB_LIGHTMAP] = pStage->bundle[TB_DIFFUSEMAP];
    pStage->bundle[TB_DIFFUSEMAP].image[0] = tr.whiteImage;
    pStage->bundle[TB_DIFFUSEMAP].isLightmap = qfalse;
    pStage->bundle[TB_DIFFUSEMAP].tcGen = 129;
   }
  }
 }


 if (shader.numDeforms == 0)
 {
  for (i = 0; i < MAX_SHADER_STAGES; i++)
  {
   shaderStage_t *pStage = &stages[i];

   if (!pStage->active)
    continue;

   if (pStage->adjustColorsForFog)
    continue;

   if (pStage->rgbGen == CGEN_LIGHTING_DIFFUSE)
   {
    pStage->glslShaderGroup = tr.lightallShader;
    pStage->glslShaderIndex = LIGHTDEF_USE_LIGHT_VECTOR;

    if (pStage->bundle[0].tcGen != 129 || pStage->bundle[0].numTexMods != 0)
     pStage->glslShaderIndex |= LIGHTDEF_USE_TCGEN_AND_TCMOD;
   }
  }
 }

 return numStages;
}
