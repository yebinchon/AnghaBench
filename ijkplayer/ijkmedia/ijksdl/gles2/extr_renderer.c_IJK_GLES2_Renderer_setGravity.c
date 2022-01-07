
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gravity; int vertices_changed; scalar_t__ layer_width; scalar_t__ layer_height; } ;
typedef TYPE_1__ IJK_GLES2_Renderer ;
typedef scalar_t__ GLsizei ;
typedef int GLboolean ;


 int GL_TRUE ;
 int IJK_GLES2_GRAVITY_MAX ;
 int IJK_GLES2_GRAVITY_MIN ;

GLboolean IJK_GLES2_Renderer_setGravity(IJK_GLES2_Renderer *renderer, int gravity, GLsizei layer_width, GLsizei layer_height)
{
    if (renderer->gravity != gravity && gravity >= IJK_GLES2_GRAVITY_MIN && gravity <= IJK_GLES2_GRAVITY_MAX)
        renderer->vertices_changed = 1;
    else if (renderer->layer_width != layer_width)
        renderer->vertices_changed = 1;
    else if (renderer->layer_height != layer_height)
        renderer->vertices_changed = 1;
    else
        return GL_TRUE;

    renderer->gravity = gravity;
    renderer->layer_width = layer_width;
    renderer->layer_height = layer_height;
    return GL_TRUE;
}
