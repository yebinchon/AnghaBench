#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec4_t ;
typedef  int /*<<< orphan*/ * vec2_t ;
struct shaderProgram_s {int dummy; } ;
struct image_s {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/  mat4_t ;
typedef  int* ivec4_t ;
struct TYPE_14__ {int vidWidth; int vidHeight; } ;
struct TYPE_13__ {TYPE_2__* currentFBO; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  toneMinAvgMaxLinear; int /*<<< orphan*/ * autoExposureMinMax; } ;
struct TYPE_11__ {TYPE_1__ refdef; struct shaderProgram_s textureColorShader; } ;
struct TYPE_10__ {int width; int height; } ;
typedef  TYPE_2__ FBO_t ;

/* Variables and functions */
 int /*<<< orphan*/  CT_TWO_SIDED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct shaderProgram_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct shaderProgram_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct shaderProgram_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct shaderProgram_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct shaderProgram_s*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct image_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRINT_WARNING ; 
 int /*<<< orphan*/  FUNC10 (int**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TB_COLORMAP ; 
 int /*<<< orphan*/  UNIFORM_AUTOEXPOSUREMINMAX ; 
 int /*<<< orphan*/  UNIFORM_COLOR ; 
 int /*<<< orphan*/  UNIFORM_INVTEXRES ; 
 int /*<<< orphan*/  UNIFORM_MODELVIEWPROJECTIONMATRIX ; 
 int /*<<< orphan*/  UNIFORM_TONEMINAVGMAXLINEAR ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,float,float) ; 
 int /*<<< orphan*/  FUNC14 (int*,int,int,float,float) ; 
 int* colorWhite ; 
 TYPE_6__ glConfig ; 
 TYPE_5__ glState ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_4__ ri ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__ tr ; 

void FUNC18(struct image_s *src, vec4_t inSrcTexCorners, vec2_t inSrcTexScale, FBO_t *dst, ivec4_t inDstBox, struct shaderProgram_s *shaderProgram, vec4_t inColor, int blend)
{
	ivec4_t dstBox;
	vec4_t color;
	vec4_t quadVerts[4];
	vec2_t texCoords[4];
	vec2_t invTexRes;
	FBO_t *oldFbo = glState.currentFBO;
	mat4_t projection;
	int width, height;

	if (!src)
	{
		ri.Printf(PRINT_WARNING, "Tried to blit from a NULL texture!\n");
		return;
	}

	width  = dst ? dst->width  : glConfig.vidWidth;
	height = dst ? dst->height : glConfig.vidHeight;

	if (inSrcTexCorners)
	{
		FUNC13(texCoords[0], inSrcTexCorners[0], inSrcTexCorners[1]);
		FUNC13(texCoords[1], inSrcTexCorners[2], inSrcTexCorners[1]);
		FUNC13(texCoords[2], inSrcTexCorners[2], inSrcTexCorners[3]);
		FUNC13(texCoords[3], inSrcTexCorners[0], inSrcTexCorners[3]);
	}
	else
	{
		FUNC13(texCoords[0], 0.0f, 1.0f);
		FUNC13(texCoords[1], 1.0f, 1.0f);
		FUNC13(texCoords[2], 1.0f, 0.0f);
		FUNC13(texCoords[3], 0.0f, 0.0f);
	}

	// framebuffers are 0 bottom, Y up.
	if (inDstBox)
	{
		dstBox[0] = inDstBox[0];
		dstBox[1] = height - inDstBox[1] - inDstBox[3];
		dstBox[2] = inDstBox[0] + inDstBox[2];
		dstBox[3] = height - inDstBox[1];
	}
	else
	{
		FUNC14(dstBox, 0, height, width, 0);
	}

	if (inSrcTexScale)
	{
		FUNC11(inSrcTexScale, invTexRes);
	}
	else
	{
		FUNC13(invTexRes, 1.0f, 1.0f);
	}

	if (inColor)
	{
		FUNC12(inColor, color);
	}
	else
	{
		FUNC12(colorWhite, color);
	}

	if (!shaderProgram)
	{
		shaderProgram = &tr.textureColorShader;
	}

	FUNC0(dst);

	FUNC16( 0, 0, width, height );
	FUNC15( 0, 0, width, height );

	FUNC9(0, width, height, 0, 0, 1, projection);

	FUNC7( CT_TWO_SIDED );

	FUNC6(src, TB_COLORMAP);

	FUNC14(quadVerts[0], dstBox[0], dstBox[1], 0.0f, 1.0f);
	FUNC14(quadVerts[1], dstBox[2], dstBox[1], 0.0f, 1.0f);
	FUNC14(quadVerts[2], dstBox[2], dstBox[3], 0.0f, 1.0f);
	FUNC14(quadVerts[3], dstBox[0], dstBox[3], 0.0f, 1.0f);

	invTexRes[0] /= src->width;
	invTexRes[1] /= src->height;

	FUNC8( blend );

	FUNC1(shaderProgram);
	
	FUNC2(shaderProgram, UNIFORM_MODELVIEWPROJECTIONMATRIX, projection);
	FUNC5(shaderProgram, UNIFORM_COLOR, color);
	FUNC3(shaderProgram, UNIFORM_INVTEXRES, invTexRes);
	FUNC3(shaderProgram, UNIFORM_AUTOEXPOSUREMINMAX, tr.refdef.autoExposureMinMax);
	FUNC4(shaderProgram, UNIFORM_TONEMINAVGMAXLINEAR, tr.refdef.toneMinAvgMaxLinear);

	FUNC10(quadVerts, texCoords);

	FUNC0(oldFbo);
}