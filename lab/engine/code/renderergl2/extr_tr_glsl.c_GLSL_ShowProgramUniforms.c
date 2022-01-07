
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uniformName ;
struct TYPE_2__ {int (* Printf ) (int ,char*,char*) ;} ;
typedef int GLuint ;
typedef int GLenum ;


 int GL_ACTIVE_UNIFORMS ;
 int PRINT_DEVELOPER ;
 int qglGetActiveUniform (int ,int,int,int *,int*,int *,char*) ;
 int qglGetProgramiv (int ,int ,int*) ;
 TYPE_1__ ri ;
 int stub1 (int ,char*,char*) ;

__attribute__((used)) static void GLSL_ShowProgramUniforms(GLuint program)
{
 int i, count, size;
 GLenum type;
 char uniformName[1000];


 qglGetProgramiv(program, GL_ACTIVE_UNIFORMS, &count);


 for(i = 0; i < count; i++)
 {
  qglGetActiveUniform(program, i, sizeof(uniformName), ((void*)0), &size, &type, uniformName);

  ri.Printf(PRINT_DEVELOPER, "active uniform: '%s'\n", uniformName);
 }
}
