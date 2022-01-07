
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int filename ;
struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {int (* FS_ReadFile ) (char*,void**) ;int (* FS_FreeFile ) (char*) ;int (* Printf ) (int ,char*,char*) ;} ;
typedef scalar_t__ GLenum ;
typedef char GLchar ;


 int Com_sprintf (char*,int,char*,char const*) ;
 scalar_t__ GL_VERTEX_SHADER ;
 int MAX_QPATH ;
 int PRINT_DEVELOPER ;
 int Q_strncpyz (char*,char const*,int) ;
 TYPE_2__* r_externalGLSL ;
 TYPE_1__ ri ;
 int strlen (char const*) ;
 int stub1 (char*,void**) ;
 int stub2 (int ,char*,char*) ;
 int stub3 (int ,char*,char*) ;
 int stub4 (int ,char*,char*) ;
 int stub5 (char*) ;

__attribute__((used)) static int GLSL_LoadGPUShaderText(const char *name, const char *fallback,
 GLenum shaderType, char *dest, int destSize)
{
 char filename[MAX_QPATH];
 GLchar *buffer = ((void*)0);
 const GLchar *shaderText = ((void*)0);
 int size;
 int result;

 if(shaderType == GL_VERTEX_SHADER)
 {
  Com_sprintf(filename, sizeof(filename), "glsl/%s_vp.glsl", name);
 }
 else
 {
  Com_sprintf(filename, sizeof(filename), "glsl/%s_fp.glsl", name);
 }

 if ( r_externalGLSL->integer ) {
  size = ri.FS_ReadFile(filename, (void **)&buffer);
 } else {
  size = 0;
  buffer = ((void*)0);
 }

 if(!buffer)
 {
  if (fallback)
  {
   ri.Printf(PRINT_DEVELOPER, "...loading built-in '%s'\n", filename);
   shaderText = fallback;
   size = strlen(shaderText);
  }
  else
  {
   ri.Printf(PRINT_DEVELOPER, "couldn't load '%s'\n", filename);
   return 0;
  }
 }
 else
 {
  ri.Printf(PRINT_DEVELOPER, "...loading '%s'\n", filename);
  shaderText = buffer;
 }

 if (size > destSize)
 {
  result = 0;
 }
 else
 {
  Q_strncpyz(dest, shaderText, size + 1);
  result = 1;
 }

 if (buffer)
 {
  ri.FS_FreeFile(buffer);
 }

 return result;
}
