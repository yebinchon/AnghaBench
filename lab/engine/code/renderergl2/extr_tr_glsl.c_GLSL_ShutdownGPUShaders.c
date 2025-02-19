
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_3__ {int * depthBlurShader; int ssaoShader; int shadowmaskShader; int * calclevels4xShader; int tonemapShader; int bokehShader; int down4xShader; int pshadowShader; int * shadowmapShader; int * lightallShader; int * dlightShader; int * fogShader; int textureColorShader; int * genericShader; } ;


 int ATTR_INDEX_COUNT ;
 int DLIGHTDEF_COUNT ;
 int FOGDEF_COUNT ;
 int GENERICDEF_COUNT ;
 int GLSL_DeleteGPUShader (int *) ;
 int GL_BindNullProgram () ;
 int LIGHTDEF_COUNT ;
 int PRINT_ALL ;
 int SHADOWMAPDEF_COUNT ;
 int qglDisableVertexAttribArray (int) ;
 TYPE_2__ ri ;
 int stub1 (int ,char*) ;
 TYPE_1__ tr ;

void GLSL_ShutdownGPUShaders(void)
{
 int i;

 ri.Printf(PRINT_ALL, "------- GLSL_ShutdownGPUShaders -------\n");

 for (i = 0; i < ATTR_INDEX_COUNT; i++)
  qglDisableVertexAttribArray(i);

 GL_BindNullProgram();

 for ( i = 0; i < GENERICDEF_COUNT; i++)
  GLSL_DeleteGPUShader(&tr.genericShader[i]);

 GLSL_DeleteGPUShader(&tr.textureColorShader);

 for ( i = 0; i < FOGDEF_COUNT; i++)
  GLSL_DeleteGPUShader(&tr.fogShader[i]);

 for ( i = 0; i < DLIGHTDEF_COUNT; i++)
  GLSL_DeleteGPUShader(&tr.dlightShader[i]);

 for ( i = 0; i < LIGHTDEF_COUNT; i++)
  GLSL_DeleteGPUShader(&tr.lightallShader[i]);

 for ( i = 0; i < SHADOWMAPDEF_COUNT; i++)
  GLSL_DeleteGPUShader(&tr.shadowmapShader[i]);

 GLSL_DeleteGPUShader(&tr.pshadowShader);
 GLSL_DeleteGPUShader(&tr.down4xShader);
 GLSL_DeleteGPUShader(&tr.bokehShader);
 GLSL_DeleteGPUShader(&tr.tonemapShader);

 for ( i = 0; i < 2; i++)
  GLSL_DeleteGPUShader(&tr.calclevels4xShader[i]);

 GLSL_DeleteGPUShader(&tr.shadowmaskShader);
 GLSL_DeleteGPUShader(&tr.ssaoShader);

 for ( i = 0; i < 4; i++)
  GLSL_DeleteGPUShader(&tr.depthBlurShader[i]);
}
