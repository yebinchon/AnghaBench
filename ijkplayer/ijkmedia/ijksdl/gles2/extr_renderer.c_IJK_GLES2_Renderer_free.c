
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* plane_textures; scalar_t__ program; scalar_t__ fragment_shader; scalar_t__ vertex_shader; int (* func_destroy ) (TYPE_1__*) ;} ;
typedef TYPE_1__ IJK_GLES2_Renderer ;


 int ALOGW (char*,...) ;
 int IJK_GLES2_MAX_PLANE ;
 int free (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

void IJK_GLES2_Renderer_free(IJK_GLES2_Renderer *renderer)
{
    if (!renderer)
        return;

    if (renderer->func_destroy)
        renderer->func_destroy(renderer);
    free(renderer);
}
