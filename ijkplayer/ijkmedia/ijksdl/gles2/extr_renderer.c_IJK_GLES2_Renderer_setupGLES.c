
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLboolean ;


 int GL_BACK ;
 int GL_CULL_FACE ;
 int GL_DEPTH_TEST ;
 int GL_TRUE ;
 int IJK_GLES2_checkError_TRACE (char*) ;
 int glClearColor (float,float,float,float) ;
 int glCullFace (int ) ;
 int glDisable (int ) ;
 int glEnable (int ) ;

GLboolean IJK_GLES2_Renderer_setupGLES()
{
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f); IJK_GLES2_checkError_TRACE("glClearColor");
    glEnable(GL_CULL_FACE); IJK_GLES2_checkError_TRACE("glEnable(GL_CULL_FACE)");
    glCullFace(GL_BACK); IJK_GLES2_checkError_TRACE("glCullFace");
    glDisable(GL_DEPTH_TEST);

    return GL_TRUE;
}
