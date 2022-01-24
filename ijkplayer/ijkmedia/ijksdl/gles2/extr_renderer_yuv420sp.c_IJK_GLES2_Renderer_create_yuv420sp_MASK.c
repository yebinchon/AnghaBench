#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  func_uploadTexture; int /*<<< orphan*/  func_getBufferWidth; int /*<<< orphan*/  func_use; int /*<<< orphan*/  program; void* um3_color_conversion; void** us2_sampler; } ;
typedef  TYPE_1__ IJK_GLES2_Renderer ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  yuv420sp_getBufferWidth ; 
 int /*<<< orphan*/  yuv420sp_uploadTexture ; 
 int /*<<< orphan*/  yuv420sp_use ; 

IJK_GLES2_Renderer *FUNC5()
{
    IJK_GLES2_Renderer *renderer = FUNC0(FUNC3());
    if (!renderer)
        goto fail;

    renderer->us2_sampler[0] = FUNC4(renderer->program, "us2_SamplerX"); FUNC2("glGetUniformLocation(us2_SamplerX)");
    renderer->us2_sampler[1] = FUNC4(renderer->program, "us2_SamplerY"); FUNC2("glGetUniformLocation(us2_SamplerY)");

    renderer->um3_color_conversion = FUNC4(renderer->program, "um3_ColorConversion"); FUNC2("glGetUniformLocation(um3_ColorConversionMatrix)");

    renderer->func_use            = yuv420sp_use;
    renderer->func_getBufferWidth = yuv420sp_getBufferWidth;
    renderer->func_uploadTexture  = yuv420sp_uploadTexture;

    return renderer;
fail:
    FUNC1(renderer);
    return NULL;
}