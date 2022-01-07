
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ timeOffset; scalar_t__ clampTime; int optimalStageIteratorFunc; int numUnfoggedPasses; int stages; struct TYPE_9__* remappedShader; } ;
typedef TYPE_3__ shader_t ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {scalar_t__ floatTime; } ;
struct TYPE_11__ {TYPE_2__ viewParms; TYPE_1__ refdef; } ;
struct TYPE_10__ {int fogNum; int cubemapIndex; scalar_t__ shaderTime; int currentStageIteratorFunc; TYPE_3__* shader; int useCacheVao; int useInternalVao; int numPasses; int xstages; scalar_t__ pshadowBits; scalar_t__ dlightBits; scalar_t__ numVertexes; scalar_t__ firstIndex; scalar_t__ numIndexes; } ;


 int RB_StageIteratorGeneric ;
 int VPF_SHADOWMAP ;
 TYPE_5__ backEnd ;
 int qfalse ;
 int qtrue ;
 TYPE_4__ tess ;

void RB_BeginSurface( shader_t *shader, int fogNum, int cubemapIndex ) {

 shader_t *state = (shader->remappedShader) ? shader->remappedShader : shader;

 tess.numIndexes = 0;
 tess.firstIndex = 0;
 tess.numVertexes = 0;
 tess.shader = state;
 tess.fogNum = fogNum;
 tess.cubemapIndex = cubemapIndex;
 tess.dlightBits = 0;
 tess.pshadowBits = 0;
 tess.xstages = state->stages;
 tess.numPasses = state->numUnfoggedPasses;
 tess.currentStageIteratorFunc = state->optimalStageIteratorFunc;
 tess.useInternalVao = qtrue;
 tess.useCacheVao = qfalse;

 tess.shaderTime = backEnd.refdef.floatTime - tess.shader->timeOffset;
 if (tess.shader->clampTime && tess.shaderTime >= tess.shader->clampTime) {
  tess.shaderTime = tess.shader->clampTime;
 }

 if (backEnd.viewParms.flags & VPF_SHADOWMAP)
 {
  tess.currentStageIteratorFunc = RB_StageIteratorGeneric;
 }
}
