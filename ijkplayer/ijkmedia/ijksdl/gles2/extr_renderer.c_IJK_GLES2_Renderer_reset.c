
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* plane_textures; scalar_t__ program; scalar_t__ fragment_shader; scalar_t__ vertex_shader; } ;
typedef TYPE_1__ IJK_GLES2_Renderer ;


 int IJK_GLES2_MAX_PLANE ;
 int glDeleteProgram (scalar_t__) ;
 int glDeleteShader (scalar_t__) ;
 int glDeleteTextures (int,scalar_t__*) ;

void IJK_GLES2_Renderer_reset(IJK_GLES2_Renderer *renderer)
{
    if (!renderer)
        return;

    if (renderer->vertex_shader)
        glDeleteShader(renderer->vertex_shader);
    if (renderer->fragment_shader)
        glDeleteShader(renderer->fragment_shader);
    if (renderer->program)
        glDeleteProgram(renderer->program);

    renderer->vertex_shader = 0;
    renderer->fragment_shader = 0;
    renderer->program = 0;

    for (int i = 0; i < IJK_GLES2_MAX_PLANE; ++i) {
        if (renderer->plane_textures[i]) {
            glDeleteTextures(1, &renderer->plane_textures[i]);
            renderer->plane_textures[i] = 0;
        }
    }
}
