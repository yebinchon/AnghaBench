
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int rgbGen; int alphaGen; TYPE_1__* bundle; scalar_t__ adjustColorsForFog; } ;
typedef TYPE_2__ shaderStage_t ;
typedef int shaderProgram_t ;
struct TYPE_12__ {scalar_t__ numDeforms; } ;
struct TYPE_11__ {scalar_t__ boneAnimation; scalar_t__ vertexAnimation; } ;
struct TYPE_10__ {TYPE_6__* shader; scalar_t__ fogNum; TYPE_2__** xstages; } ;
struct TYPE_9__ {int * genericShader; } ;
struct TYPE_7__ {scalar_t__ tcGen; scalar_t__ numTexMods; } ;





 int GENERICDEF_USE_BONE_ANIMATION ;
 int GENERICDEF_USE_DEFORM_VERTEXES ;
 int GENERICDEF_USE_FOG ;
 int GENERICDEF_USE_RGBAGEN ;
 int GENERICDEF_USE_TCGEN_AND_TCMOD ;
 int GENERICDEF_USE_VERTEX_ANIMATION ;
 int ShaderRequiresCPUDeforms (TYPE_6__*) ;
 scalar_t__ TCGEN_TEXTURE ;
 TYPE_5__ glState ;
 TYPE_4__ tess ;
 TYPE_3__ tr ;

shaderProgram_t *GLSL_GetGenericShaderProgram(int stage)
{
 shaderStage_t *pStage = tess.xstages[stage];
 int shaderAttribs = 0;

 if (tess.fogNum && pStage->adjustColorsForFog)
 {
  shaderAttribs |= GENERICDEF_USE_FOG;
 }

 switch (pStage->rgbGen)
 {
  case 128:
   shaderAttribs |= GENERICDEF_USE_RGBAGEN;
   break;
  default:
   break;
 }

 switch (pStage->alphaGen)
 {
  case 130:
  case 129:
   shaderAttribs |= GENERICDEF_USE_RGBAGEN;
   break;
  default:
   break;
 }

 if (pStage->bundle[0].tcGen != TCGEN_TEXTURE)
 {
  shaderAttribs |= GENERICDEF_USE_TCGEN_AND_TCMOD;
 }

 if (tess.shader->numDeforms && !ShaderRequiresCPUDeforms(tess.shader))
 {
  shaderAttribs |= GENERICDEF_USE_DEFORM_VERTEXES;
 }

 if (glState.vertexAnimation)
 {
  shaderAttribs |= GENERICDEF_USE_VERTEX_ANIMATION;
 }
 else if (glState.boneAnimation)
 {
  shaderAttribs |= GENERICDEF_USE_BONE_ANIMATION;
 }

 if (pStage->bundle[0].numTexMods)
 {
  shaderAttribs |= GENERICDEF_USE_TCGEN_AND_TCMOD;
 }

 return &tr.genericShader[shaderAttribs];
}
