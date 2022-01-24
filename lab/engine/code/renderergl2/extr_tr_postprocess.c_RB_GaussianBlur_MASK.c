#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec4_t ;
typedef  float* ivec4_t ;
struct TYPE_13__ {int width; int height; } ;
struct TYPE_12__ {int vidWidth; int vidHeight; } ;
struct TYPE_11__ {TYPE_3__** textureScratchFbo; int /*<<< orphan*/  whiteImage; TYPE_3__** quarterFbo; } ;

/* Variables and functions */
 float FUNC0 (float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,float*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLS_DEPTHTEST_DISABLE ; 
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ; 
 int GLS_SRCBLEND_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_3__*,float) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*,float) ; 
 int /*<<< orphan*/  FUNC6 (float*,int,int,int,int) ; 
 TYPE_2__ glConfig ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ tr ; 

void FUNC8(float blur)
{
	//float mul = 1.f;
	float factor = FUNC0(0.f, 1.f, blur);

	if (factor <= 0.f)
		return;

	{
		ivec4_t srcBox, dstBox;
		vec4_t color;

		FUNC6(color, 1, 1, 1, 1);

		// first, downsample the framebuffer
		FUNC3(NULL, NULL, tr.quarterFbo[0], NULL, GL_COLOR_BUFFER_BIT, GL_LINEAR);
		FUNC3(tr.quarterFbo[0], NULL, tr.textureScratchFbo[0], NULL, GL_COLOR_BUFFER_BIT, GL_LINEAR);

		// set the alpha channel
		FUNC7(GL_FALSE, GL_FALSE, GL_FALSE, GL_TRUE);
		FUNC2(tr.whiteImage, NULL, NULL, tr.textureScratchFbo[0], NULL, NULL, color, GLS_DEPTHTEST_DISABLE);
		FUNC7(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);

		// blur the tiny buffer horizontally and vertically
		FUNC4(tr.textureScratchFbo[0], tr.textureScratchFbo[1], factor);
		FUNC5(tr.textureScratchFbo[1], tr.textureScratchFbo[0], factor);

		// finally, merge back to framebuffer
		FUNC6(srcBox, 0, 0, tr.textureScratchFbo[0]->width, tr.textureScratchFbo[0]->height);
		FUNC6(dstBox, 0, 0, glConfig.vidWidth,              glConfig.vidHeight);
		color[3] = factor;
		FUNC1(tr.textureScratchFbo[0], srcBox, NULL, NULL, dstBox, NULL, color, GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA);
	}
}