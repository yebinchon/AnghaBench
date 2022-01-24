#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int gravity; scalar_t__ layer_width; scalar_t__ layer_height; float frame_width; float frame_height; float frame_sar_num; float frame_sar_den; float* vertices; } ;
typedef  TYPE_1__ IJK_GLES2_Renderer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 float FUNC1 (float const,float const) ; 
 float FUNC2 (float const,float const) ; 
#define  IJK_GLES2_GRAVITY_RESIZE 130 
#define  IJK_GLES2_GRAVITY_RESIZE_ASPECT 129 
#define  IJK_GLES2_GRAVITY_RESIZE_ASPECT_FILL 128 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(IJK_GLES2_Renderer *renderer)
{
    switch (renderer->gravity) {
        case IJK_GLES2_GRAVITY_RESIZE_ASPECT:
            break;
        case IJK_GLES2_GRAVITY_RESIZE_ASPECT_FILL:
            break;
        case IJK_GLES2_GRAVITY_RESIZE:
            FUNC3(renderer);
            return;
        default:
            FUNC0("[GLES2] unknown gravity %d\n", renderer->gravity);
            FUNC3(renderer);
            return;
    }

    if (renderer->layer_width <= 0 ||
        renderer->layer_height <= 0 ||
        renderer->frame_width <= 0 ||
        renderer->frame_height <= 0)
    {
        FUNC0("[GLES2] invalid width/height for gravity aspect\n");
        FUNC3(renderer);
        return;
    }

    float width     = renderer->frame_width;
    float height    = renderer->frame_height;

    if (renderer->frame_sar_num > 0 && renderer->frame_sar_den > 0) {
        width = width * renderer->frame_sar_num / renderer->frame_sar_den;
    }

    const float dW  = (float)renderer->layer_width	/ width;
    const float dH  = (float)renderer->layer_height / height;
    float dd        = 1.0f;
    float nW        = 1.0f;
    float nH        = 1.0f;

    switch (renderer->gravity) {
        case IJK_GLES2_GRAVITY_RESIZE_ASPECT_FILL:  dd = FUNC1(dW, dH); break;
        case IJK_GLES2_GRAVITY_RESIZE_ASPECT:       dd = FUNC2(dW, dH); break;
    }

    nW = (width  * dd / (float)renderer->layer_width);
    nH = (height * dd / (float)renderer->layer_height);

    renderer->vertices[0] = - nW;
    renderer->vertices[1] = - nH;
    renderer->vertices[2] =   nW;
    renderer->vertices[3] = - nH;
    renderer->vertices[4] = - nW;
    renderer->vertices[5] =   nH;
    renderer->vertices[6] =   nW;
    renderer->vertices[7] =   nH;
}