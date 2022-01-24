#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec4_t ;
typedef  float* ivec4_t ;
struct TYPE_8__ {int vidWidth; int vidHeight; } ;
struct TYPE_7__ {int width; int height; } ;
typedef  TYPE_1__ FBO_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,float*,int /*<<< orphan*/ *,TYPE_1__*,float*,int /*<<< orphan*/ *,float*,int) ; 
 int GLS_DSTBLEND_ONE ; 
 int GLS_SRCBLEND_ONE ; 
 int /*<<< orphan*/  FUNC1 (float*,float,float,float,float) ; 
 TYPE_2__ glConfig ; 
 float FUNC2 (float,float const) ; 

__attribute__((used)) static void FUNC3(FBO_t *srcFbo, FBO_t *dstFbo, int passes, float stretch, float x, float y, float w, float h, float xcenter, float ycenter, float alpha)
{
	ivec4_t srcBox, dstBox;
	int srcWidth, srcHeight;
	vec4_t color;
	const float inc = 1.f / passes;
	const float mul = FUNC2(stretch, inc);
	float scale;

	alpha *= inc;
	FUNC1(color, alpha, alpha, alpha, 1.0f);

	srcWidth  = srcFbo ? srcFbo->width  : glConfig.vidWidth;
	srcHeight = srcFbo ? srcFbo->height : glConfig.vidHeight;

	FUNC1(srcBox, 0, 0, srcWidth, srcHeight);

	FUNC1(dstBox, x, y, w, h);
	FUNC0(srcFbo, srcBox, NULL, dstFbo, dstBox, NULL, color, 0);

	--passes;
	scale = mul;
	while (passes > 0)
	{
		float iscale = 1.f / scale;
		float s0 = xcenter * (1.f - iscale);
		float t0 = (1.0f - ycenter) * (1.f - iscale);

		srcBox[0] = s0 * srcWidth;
		srcBox[1] = t0 * srcHeight;
		srcBox[2] = iscale * srcWidth;
		srcBox[3] = iscale * srcHeight;
			
		FUNC0(srcFbo, srcBox, NULL, dstFbo, dstBox, NULL, color, GLS_SRCBLEND_ONE | GLS_DSTBLEND_ONE );

		scale *= mul;
		--passes;
	}
}