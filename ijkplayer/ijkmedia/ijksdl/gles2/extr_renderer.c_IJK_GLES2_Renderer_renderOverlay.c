
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ frame_width; scalar_t__ frame_height; scalar_t__ frame_sar_num; scalar_t__ frame_sar_den; int vertices_changed; scalar_t__ last_buffer_width; scalar_t__ (* func_getBufferWidth ) (TYPE_2__*,TYPE_1__*) ;scalar_t__ buffer_width; scalar_t__ visible_width; int (* func_uploadTexture ) (TYPE_2__*,TYPE_1__*) ;} ;
struct TYPE_14__ {scalar_t__ w; scalar_t__ h; scalar_t__ sar_num; scalar_t__ sar_den; } ;
typedef TYPE_1__ SDL_VoutOverlay ;
typedef TYPE_2__ IJK_GLES2_Renderer ;
typedef scalar_t__ GLsizei ;
typedef scalar_t__ GLfloat ;
typedef int GLboolean ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_FALSE ;
 int GL_TRIANGLE_STRIP ;
 int GL_TRUE ;
 int IJK_GLES2_Renderer_TexCoords_cropRight (TYPE_2__*,scalar_t__) ;
 int IJK_GLES2_Renderer_TexCoords_reloadVertex (TYPE_2__*) ;
 int IJK_GLES2_Renderer_TexCoords_reset (TYPE_2__*) ;
 int IJK_GLES2_Renderer_Vertices_apply (TYPE_2__*) ;
 int IJK_GLES2_Renderer_Vertices_reloadVertex (TYPE_2__*) ;
 int IJK_GLES2_checkError_TRACE (char*) ;
 int glClear (int ) ;
 int glDrawArrays (int ,int ,int) ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_1__*) ;
 int stub2 (TYPE_2__*,TYPE_1__*) ;

GLboolean IJK_GLES2_Renderer_renderOverlay(IJK_GLES2_Renderer *renderer, SDL_VoutOverlay *overlay)
{
    if (!renderer || !renderer->func_uploadTexture)
        return GL_FALSE;

    glClear(GL_COLOR_BUFFER_BIT); IJK_GLES2_checkError_TRACE("glClear");

    GLsizei visible_width = renderer->frame_width;
    GLsizei visible_height = renderer->frame_height;
    if (overlay) {
        visible_width = overlay->w;
        visible_height = overlay->h;
        if (renderer->frame_width != visible_width ||
            renderer->frame_height != visible_height ||
            renderer->frame_sar_num != overlay->sar_num ||
            renderer->frame_sar_den != overlay->sar_den) {

            renderer->frame_width = visible_width;
            renderer->frame_height = visible_height;
            renderer->frame_sar_num = overlay->sar_num;
            renderer->frame_sar_den = overlay->sar_den;

            renderer->vertices_changed = 1;
        }

        renderer->last_buffer_width = renderer->func_getBufferWidth(renderer, overlay);

        if (!renderer->func_uploadTexture(renderer, overlay))
            return GL_FALSE;
    } else {

        renderer->vertices_changed = 1;
    }

    GLsizei buffer_width = renderer->last_buffer_width;
    if (renderer->vertices_changed ||
        (buffer_width > 0 &&
         buffer_width > visible_width &&
         buffer_width != renderer->buffer_width &&
         visible_width != renderer->visible_width)){

        renderer->vertices_changed = 0;

        IJK_GLES2_Renderer_Vertices_apply(renderer);
        IJK_GLES2_Renderer_Vertices_reloadVertex(renderer);

        renderer->buffer_width = buffer_width;
        renderer->visible_width = visible_width;

        GLsizei padding_pixels = buffer_width - visible_width;
        GLfloat padding_normalized = ((GLfloat)padding_pixels) / buffer_width;

        IJK_GLES2_Renderer_TexCoords_reset(renderer);
        IJK_GLES2_Renderer_TexCoords_cropRight(renderer, padding_normalized);
        IJK_GLES2_Renderer_TexCoords_reloadVertex(renderer);
    }

    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4); IJK_GLES2_checkError_TRACE("glDrawArrays");

    return GL_TRUE;
}
