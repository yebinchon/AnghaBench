
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int version ;
typedef int qboolean ;
struct TYPE_16__ {int framebufferObject; int vertexArrayObject; int textureFloat; size_t depthClamp; int seamlessCubeMap; scalar_t__ memInfo; int textureCompression; int swizzleNormalmap; int directStateAccess; int glslMinorVersion; int glslMajorVersion; int maxColorAttachments; int maxRenderbufferSize; void* framebufferMultisample; void* framebufferBlit; void* occlusionQuery; void* intelGraphics; } ;
struct TYPE_15__ {int integer; } ;
struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {int (* Printf ) (int ,char const*,char*) ;} ;


 int GL_MAX_COLOR_ATTACHMENTS ;
 int GL_MAX_RENDERBUFFER_SIZE ;
 int GL_RENDERER ;
 int GL_SHADING_LANGUAGE_VERSION ;
 scalar_t__ MI_ATI ;
 scalar_t__ MI_NONE ;
 scalar_t__ MI_NVX ;
 int PRINT_ALL ;
 int QGL_ARB_framebuffer_object_PROCS ;
 int QGL_ARB_occlusion_query_PROCS ;
 int QGL_ARB_vertex_array_object_PROCS ;
 int QGL_EXT_direct_state_access_PROCS ;
 int QGL_VERSION_ATLEAST (int,int) ;
 int Q_strncpyz (char*,char*,int) ;
 scalar_t__ SDL_GL_ExtensionSupported (char*) ;
 int TCR_BPTC ;
 int TCR_NONE ;
 int TCR_RGTC ;
 TYPE_8__ glRefConfig ;
 void* qfalse ;
 int qglGetIntegerv (int ,int *) ;
 scalar_t__ qglGetString (int ) ;
 void* qtrue ;
 TYPE_7__* r_arb_seamless_cube_map ;
 TYPE_6__* r_arb_vertex_array_object ;
 TYPE_5__* r_ext_compressed_textures ;
 TYPE_4__* r_ext_direct_state_access ;
 TYPE_3__* r_ext_framebuffer_object ;
 TYPE_2__* r_ext_texture_float ;
 TYPE_1__ ri ;
 int sscanf (char*,char*,int *,int *) ;
 scalar_t__ strstr (char*,char*) ;
 int stub1 (int ,char const*,char*) ;
 int stub10 (int ,char const*,char*) ;
 int stub11 (int ,char*,char*) ;
 int stub12 (int ,char const*,char*) ;
 int stub13 (int ,char const*,char*) ;
 int stub14 (int ,char const*,char*) ;
 int stub15 (int ,char const*,char*) ;
 int stub16 (int ,char const*,char*) ;
 int stub17 (int ,char const*,char*) ;
 int stub18 (int ,char const*,char*) ;
 int stub19 (int ,char const*,char*) ;
 int stub2 (int ,char const*,char*) ;
 int stub20 (int ,char const*,char*) ;
 int stub21 (int ,char const*,char*) ;
 int stub22 (int ,char const*,char*) ;
 int stub3 (int ,char const*,char*) ;
 int stub4 (int ,char const*,char*) ;
 int stub5 (int ,char const*,char*) ;
 int stub6 (int ,char const*,char*) ;
 int stub7 (int ,char const*,char*) ;
 int stub8 (int ,char const*,char*) ;
 int stub9 (int ,char const*,char*) ;

void GLimp_InitExtraExtensions(void)
{
 char *extension;
 const char* result[3] = { "...ignoring %s\n", "...using %s\n", "...%s not found\n" };
 qboolean q_gl_version_at_least_3_0;
 qboolean q_gl_version_at_least_3_2;

 q_gl_version_at_least_3_0 = QGL_VERSION_ATLEAST( 3, 0 );
 q_gl_version_at_least_3_2 = QGL_VERSION_ATLEAST( 3, 2 );


 glRefConfig.intelGraphics = qfalse;
 if (strstr((char *)qglGetString(GL_RENDERER), "Intel"))
  glRefConfig.intelGraphics = qtrue;



 QGL_EXT_direct_state_access_PROCS;






 glRefConfig.occlusionQuery = qtrue;
 QGL_ARB_occlusion_query_PROCS;


 extension = "GL_ARB_framebuffer_object";
 glRefConfig.framebufferObject = qfalse;
 glRefConfig.framebufferBlit = qfalse;
 glRefConfig.framebufferMultisample = qfalse;
 if (q_gl_version_at_least_3_0 || SDL_GL_ExtensionSupported(extension))
 {
  glRefConfig.framebufferObject = !!r_ext_framebuffer_object->integer;
  glRefConfig.framebufferBlit = qtrue;
  glRefConfig.framebufferMultisample = qtrue;

  qglGetIntegerv(GL_MAX_RENDERBUFFER_SIZE, &glRefConfig.maxRenderbufferSize);
  qglGetIntegerv(GL_MAX_COLOR_ATTACHMENTS, &glRefConfig.maxColorAttachments);

  QGL_ARB_framebuffer_object_PROCS;

  ri.Printf(PRINT_ALL, result[glRefConfig.framebufferObject], extension);
 }
 else
 {
  ri.Printf(PRINT_ALL, result[2], extension);
 }


 extension = "GL_ARB_vertex_array_object";
 glRefConfig.vertexArrayObject = qfalse;
 if (q_gl_version_at_least_3_0 || SDL_GL_ExtensionSupported(extension))
 {
  if (q_gl_version_at_least_3_0)
  {

   glRefConfig.vertexArrayObject = qtrue;
  }
  else
  {
   glRefConfig.vertexArrayObject = !!r_arb_vertex_array_object->integer;
  }

  QGL_ARB_vertex_array_object_PROCS;

  ri.Printf(PRINT_ALL, result[glRefConfig.vertexArrayObject], extension);
 }
 else
 {
  ri.Printf(PRINT_ALL, result[2], extension);
 }


 extension = "GL_ARB_texture_float";
 glRefConfig.textureFloat = qfalse;
 if (q_gl_version_at_least_3_0 || SDL_GL_ExtensionSupported(extension))
 {
  glRefConfig.textureFloat = !!r_ext_texture_float->integer;

  ri.Printf(PRINT_ALL, result[glRefConfig.textureFloat], extension);
 }
 else
 {
  ri.Printf(PRINT_ALL, result[2], extension);
 }


 extension = "GL_ARB_depth_clamp";
 glRefConfig.depthClamp = qfalse;
 if (q_gl_version_at_least_3_2 || SDL_GL_ExtensionSupported(extension))
 {
  glRefConfig.depthClamp = qtrue;

  ri.Printf(PRINT_ALL, result[glRefConfig.depthClamp], extension);
 }
 else
 {
  ri.Printf(PRINT_ALL, result[2], extension);
 }


 extension = "GL_ARB_seamless_cube_map";
 glRefConfig.seamlessCubeMap = qfalse;
 if (q_gl_version_at_least_3_2 || SDL_GL_ExtensionSupported(extension))
 {
  glRefConfig.seamlessCubeMap = !!r_arb_seamless_cube_map->integer;

  ri.Printf(PRINT_ALL, result[glRefConfig.seamlessCubeMap], extension);
 }
 else
 {
  ri.Printf(PRINT_ALL, result[2], extension);
 }


 if (1)
 {
  char version[256];

  Q_strncpyz(version, (char *)qglGetString(GL_SHADING_LANGUAGE_VERSION), sizeof(version));

  sscanf(version, "%d.%d", &glRefConfig.glslMajorVersion, &glRefConfig.glslMinorVersion);

  ri.Printf(PRINT_ALL, "...using GLSL version %s\n", version);
 }

 glRefConfig.memInfo = MI_NONE;


 extension = "GL_NVX_gpu_memory_info";
 if( SDL_GL_ExtensionSupported( extension ) )
 {
  glRefConfig.memInfo = MI_NVX;

  ri.Printf(PRINT_ALL, result[1], extension);
 }
 else
 {
  ri.Printf(PRINT_ALL, result[2], extension);
 }


 extension = "GL_ATI_meminfo";
 if( SDL_GL_ExtensionSupported( extension ) )
 {
  if (glRefConfig.memInfo == MI_NONE)
  {
   glRefConfig.memInfo = MI_ATI;

   ri.Printf(PRINT_ALL, result[1], extension);
  }
  else
  {
   ri.Printf(PRINT_ALL, result[0], extension);
  }
 }
 else
 {
  ri.Printf(PRINT_ALL, result[2], extension);
 }

 glRefConfig.textureCompression = TCR_NONE;


 extension = "GL_ARB_texture_compression_rgtc";
 if (SDL_GL_ExtensionSupported(extension))
 {
  qboolean useRgtc = r_ext_compressed_textures->integer >= 1;

  if (useRgtc)
   glRefConfig.textureCompression |= TCR_RGTC;

  ri.Printf(PRINT_ALL, result[useRgtc], extension);
 }
 else
 {
  ri.Printf(PRINT_ALL, result[2], extension);
 }

 glRefConfig.swizzleNormalmap = r_ext_compressed_textures->integer && !(glRefConfig.textureCompression & TCR_RGTC);


 extension = "GL_ARB_texture_compression_bptc";
 if (SDL_GL_ExtensionSupported(extension))
 {
  qboolean useBptc = r_ext_compressed_textures->integer >= 2;

  if (useBptc)
   glRefConfig.textureCompression |= TCR_BPTC;

  ri.Printf(PRINT_ALL, result[useBptc], extension);
 }
 else
 {
  ri.Printf(PRINT_ALL, result[2], extension);
 }


 extension = "GL_EXT_direct_state_access";
 glRefConfig.directStateAccess = qfalse;
 if (SDL_GL_ExtensionSupported(extension))
 {
  glRefConfig.directStateAccess = !!r_ext_direct_state_access->integer;


  if (glRefConfig.directStateAccess)
  {
   QGL_EXT_direct_state_access_PROCS;
  }

  ri.Printf(PRINT_ALL, result[glRefConfig.directStateAccess], extension);
 }
 else
 {
  ri.Printf(PRINT_ALL, result[2], extension);
 }


}
