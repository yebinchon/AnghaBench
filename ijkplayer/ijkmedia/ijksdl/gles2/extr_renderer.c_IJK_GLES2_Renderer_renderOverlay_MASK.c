#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ frame_width; scalar_t__ frame_height; scalar_t__ frame_sar_num; scalar_t__ frame_sar_den; int vertices_changed; scalar_t__ last_buffer_width; scalar_t__ (* func_getBufferWidth ) (TYPE_2__*,TYPE_1__*) ;scalar_t__ buffer_width; scalar_t__ visible_width; int /*<<< orphan*/  (* func_uploadTexture ) (TYPE_2__*,TYPE_1__*) ;} ;
struct TYPE_14__ {scalar_t__ w; scalar_t__ h; scalar_t__ sar_num; scalar_t__ sar_den; } ;
typedef  TYPE_1__ SDL_VoutOverlay ;
typedef  TYPE_2__ IJK_GLES2_Renderer ;
typedef  scalar_t__ GLsizei ;
typedef  scalar_t__ GLfloat ;
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*) ; 

GLboolean FUNC10(IJK_GLES2_Renderer *renderer, SDL_VoutOverlay *overlay)
{
    if (!renderer || !renderer->func_uploadTexture)
        return GL_FALSE;

    FUNC6(GL_COLOR_BUFFER_BIT);               FUNC5("glClear");

    GLsizei visible_width  = renderer->frame_width;
    GLsizei visible_height = renderer->frame_height;
    if (overlay) {
        visible_width  = overlay->w;
        visible_height = overlay->h;
        if (renderer->frame_width   != visible_width    ||
            renderer->frame_height  != visible_height   ||
            renderer->frame_sar_num != overlay->sar_num ||
            renderer->frame_sar_den != overlay->sar_den) {

            renderer->frame_width   = visible_width;
            renderer->frame_height  = visible_height;
            renderer->frame_sar_num = overlay->sar_num;
            renderer->frame_sar_den = overlay->sar_den;

            renderer->vertices_changed = 1;
        }

        renderer->last_buffer_width = renderer->func_getBufferWidth(renderer, overlay);

        if (!renderer->func_uploadTexture(renderer, overlay))
            return GL_FALSE;
    } else {
        // NULL overlay means force reload vertice
        renderer->vertices_changed = 1;
    }

    GLsizei buffer_width = renderer->last_buffer_width;
    if (renderer->vertices_changed ||
        (buffer_width > 0 &&
         buffer_width > visible_width &&
         buffer_width != renderer->buffer_width &&
         visible_width != renderer->visible_width)){

        renderer->vertices_changed = 0;

        FUNC3(renderer);
        FUNC4(renderer);

        renderer->buffer_width  = buffer_width;
        renderer->visible_width = visible_width;

        GLsizei padding_pixels     = buffer_width - visible_width;
        GLfloat padding_normalized = ((GLfloat)padding_pixels) / buffer_width;

        FUNC2(renderer);
        FUNC0(renderer, padding_normalized);
        FUNC1(renderer);
    }

    FUNC7(GL_TRIANGLE_STRIP, 0, 4);      FUNC5("glDrawArrays");

    return GL_TRUE;
}