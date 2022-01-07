
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vpCode ;
typedef int shaderProgram_t ;
typedef scalar_t__ qboolean ;
typedef int fpCode ;
typedef int GLchar ;


 int GLSL_GetShaderHeader (int ,int const*,char*,int) ;
 int GLSL_InitGPUShader2 (int *,char const*,int,char*,char*) ;
 int GLSL_LoadGPUShaderText (char const*,char const*,int ,char*,int) ;
 int GL_FRAGMENT_SHADER ;
 int GL_VERTEX_SHADER ;
 int strlen (char*) ;

__attribute__((used)) static int GLSL_InitGPUShader(shaderProgram_t * program, const char *name,
 int attribs, qboolean fragmentShader, const GLchar *extra, qboolean addHeader,
 const char *fallback_vp, const char *fallback_fp)
{
 char vpCode[32000];
 char fpCode[32000];
 char *postHeader;
 int size;
 int result;

 size = sizeof(vpCode);
 if (addHeader)
 {
  GLSL_GetShaderHeader(GL_VERTEX_SHADER, extra, vpCode, size);
  postHeader = &vpCode[strlen(vpCode)];
  size -= strlen(vpCode);
 }
 else
 {
  postHeader = &vpCode[0];
 }

 if (!GLSL_LoadGPUShaderText(name, fallback_vp, GL_VERTEX_SHADER, postHeader, size))
 {
  return 0;
 }

 if (fragmentShader)
 {
  size = sizeof(fpCode);
  if (addHeader)
  {
   GLSL_GetShaderHeader(GL_FRAGMENT_SHADER, extra, fpCode, size);
   postHeader = &fpCode[strlen(fpCode)];
   size -= strlen(fpCode);
  }
  else
  {
   postHeader = &fpCode[0];
  }

  if (!GLSL_LoadGPUShaderText(name, fallback_fp, GL_FRAGMENT_SHADER, postHeader, size))
  {
   return 0;
  }
 }

 result = GLSL_InitGPUShader2(program, name, attribs, vpCode, fragmentShader ? fpCode : ((void*)0));

 return result;
}
