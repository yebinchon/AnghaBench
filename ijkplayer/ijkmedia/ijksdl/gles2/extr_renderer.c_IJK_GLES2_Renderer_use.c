
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int um4_mvp; int (* func_use ) (TYPE_2__*) ;} ;
struct TYPE_11__ {int m; } ;
typedef TYPE_1__ IJK_GLES_Matrix ;
typedef TYPE_2__ IJK_GLES2_Renderer ;
typedef int GLboolean ;


 int GL_FALSE ;
 int GL_TRUE ;
 int IJK_GLES2_Renderer_TexCoords_reloadVertex (TYPE_2__*) ;
 int IJK_GLES2_Renderer_TexCoords_reset (TYPE_2__*) ;
 int IJK_GLES2_Renderer_Vertices_reloadVertex (TYPE_2__*) ;
 int IJK_GLES2_Renderer_Vertices_reset (TYPE_2__*) ;
 int IJK_GLES2_checkError_TRACE (char*) ;
 int IJK_GLES2_loadOrtho (TYPE_1__*,float,float,float,float,float,float) ;
 int assert (int (*) (TYPE_2__*)) ;
 int glUniformMatrix4fv (int ,int,int ,int ) ;
 int stub1 (TYPE_2__*) ;

GLboolean IJK_GLES2_Renderer_use(IJK_GLES2_Renderer *renderer)
{
    if (!renderer)
        return GL_FALSE;

    assert(renderer->func_use);
    if (!renderer->func_use(renderer))
        return GL_FALSE;

    IJK_GLES_Matrix modelViewProj;
    IJK_GLES2_loadOrtho(&modelViewProj, -1.0f, 1.0f, -1.0f, 1.0f, -1.0f, 1.0f);
    glUniformMatrix4fv(renderer->um4_mvp, 1, GL_FALSE, modelViewProj.m); IJK_GLES2_checkError_TRACE("glUniformMatrix4fv(um4_mvp)");

    IJK_GLES2_Renderer_TexCoords_reset(renderer);
    IJK_GLES2_Renderer_TexCoords_reloadVertex(renderer);

    IJK_GLES2_Renderer_Vertices_reset(renderer);
    IJK_GLES2_Renderer_Vertices_reloadVertex(renderer);

    return GL_TRUE;
}
