
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Error ) (int ,char*) ;} ;
typedef int GLuint ;
typedef int GLint ;


 int ERR_DROP ;
 int GLSL_PRINTLOG_PROGRAM_INFO ;
 int GLSL_PrintLog (int ,int ,int ) ;
 int GL_LINK_STATUS ;
 int qfalse ;
 int qglGetProgramiv (int ,int ,int *) ;
 int qglLinkProgram (int ) ;
 TYPE_1__ ri ;
 int stub1 (int ,char*) ;

__attribute__((used)) static void GLSL_LinkProgram(GLuint program)
{
 GLint linked;

 qglLinkProgram(program);

 qglGetProgramiv(program, GL_LINK_STATUS, &linked);
 if(!linked)
 {
  GLSL_PrintLog(program, GLSL_PRINTLOG_PROGRAM_INFO, qfalse);
  ri.Error(ERR_DROP, "shaders failed to link");
 }
}
