
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* sunShader; TYPE_2__* flareShader; void* projectionShadowShader; } ;
struct TYPE_5__ {int numUnfoggedPasses; TYPE_1__** stages; int defaultShader; } ;
struct TYPE_4__ {int stateBits; int adjustColorsForFog; } ;


 int ACFF_NONE ;
 int GLS_DEPTHTEST_DISABLE ;
 int LIGHTMAP_NONE ;
 void* R_FindShader (char*,int ,int ) ;
 int qtrue ;
 TYPE_3__ tr ;

__attribute__((used)) static void CreateExternalShaders( void ) {
 tr.projectionShadowShader = R_FindShader( "projectionShadow", LIGHTMAP_NONE, qtrue );
 tr.flareShader = R_FindShader( "flareShader", LIGHTMAP_NONE, qtrue );



 if(!tr.flareShader->defaultShader)
 {
  int index;

  for(index = 0; index < tr.flareShader->numUnfoggedPasses; index++)
  {
   tr.flareShader->stages[index]->adjustColorsForFog = ACFF_NONE;
   tr.flareShader->stages[index]->stateBits |= GLS_DEPTHTEST_DISABLE;
  }
 }

 tr.sunShader = R_FindShader( "sun", LIGHTMAP_NONE, qtrue );
}
