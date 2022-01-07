
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Error ) (int ,char*) ;} ;
typedef int GLuint ;
typedef int GLint ;
typedef int GLenum ;
typedef int GLchar ;


 int ERR_DROP ;
 int GLSL_PRINTLOG_SHADER_INFO ;
 int GLSL_PRINTLOG_SHADER_SOURCE ;
 int GLSL_PrintLog (int ,int ,int ) ;
 int GL_COMPILE_STATUS ;
 int qfalse ;
 int qglAttachShader (int ,int ) ;
 int qglCompileShader (int ) ;
 int qglCreateShader (int ) ;
 int qglDeleteShader (int ) ;
 int qglDetachShader (int ,int ) ;
 int qglGetShaderiv (int ,int ,int *) ;
 int qglShaderSource (int ,int,int const**,int*) ;
 TYPE_1__ ri ;
 int stub1 (int ,char*) ;

__attribute__((used)) static int GLSL_CompileGPUShader(GLuint program, GLuint *prevShader, const GLchar *buffer, int size, GLenum shaderType)
{
 GLint compiled;
 GLuint shader;

 shader = qglCreateShader(shaderType);

 qglShaderSource(shader, 1, (const GLchar **)&buffer, &size);


 qglCompileShader(shader);


 qglGetShaderiv(shader, GL_COMPILE_STATUS, &compiled);
 if(!compiled)
 {
  GLSL_PrintLog(shader, GLSL_PRINTLOG_SHADER_SOURCE, qfalse);
  GLSL_PrintLog(shader, GLSL_PRINTLOG_SHADER_INFO, qfalse);
  ri.Error(ERR_DROP, "Couldn't compile shader");
  return 0;
 }

 if (*prevShader)
 {
  qglDetachShader(program, *prevShader);
  qglDeleteShader(*prevShader);
 }


 qglAttachShader(program, shader);

 *prevShader = shader;

 return 1;
}
