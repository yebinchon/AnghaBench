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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  yuv444p10le_getBufferWidth ; 
 int /*<<< orphan*/  yuv444p10le_uploadTexture ; 
 int /*<<< orphan*/  yuv444p10le_use ; 

IJK_GLES2_Renderer *FUNC6()
{
    FUNC0("create render yuv444p10le\n");
    IJK_GLES2_Renderer *renderer = FUNC1(FUNC4());
    if (!renderer)
        goto fail;

    renderer->us2_sampler[0] = FUNC5(renderer->program, "us2_SamplerX"); FUNC3("glGetUniformLocation(us2_SamplerX)");
    renderer->us2_sampler[1] = FUNC5(renderer->program, "us2_SamplerY"); FUNC3("glGetUniformLocation(us2_SamplerY)");
    renderer->us2_sampler[2] = FUNC5(renderer->program, "us2_SamplerZ"); FUNC3("glGetUniformLocation(us2_SamplerZ)");

    renderer->um3_color_conversion = FUNC5(renderer->program, "um3_ColorConversion"); FUNC3("glGetUniformLocation(um3_ColorConversionMatrix)");

    renderer->func_use            = yuv444p10le_use;
    renderer->func_getBufferWidth = yuv444p10le_getBufferWidth;
    renderer->func_uploadTexture  = yuv444p10le_uploadTexture;

    return renderer;
fail:
    FUNC2(renderer);
    return NULL;
}