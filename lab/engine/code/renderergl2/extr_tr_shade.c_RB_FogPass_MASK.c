#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec5_t ;
typedef  unsigned char* vec4_t ;
typedef  int /*<<< orphan*/  shaderProgram_t ;
struct TYPE_12__ {int /*<<< orphan*/  colorInt; } ;
typedef  TYPE_4__ fog_t ;
struct TYPE_9__ {int /*<<< orphan*/  c_fogDraws; } ;
struct TYPE_16__ {TYPE_1__ pc; } ;
struct TYPE_15__ {float vertexAttribsInterpolation; scalar_t__ boneAnimation; int /*<<< orphan*/  boneMatrix; int /*<<< orphan*/  modelviewProjection; scalar_t__ vertexAnimation; } ;
struct TYPE_14__ {int fogNum; float shaderTime; int /*<<< orphan*/  firstIndex; int /*<<< orphan*/  numIndexes; TYPE_3__* shader; } ;
struct TYPE_13__ {TYPE_2__* world; int /*<<< orphan*/ * fogShader; } ;
struct TYPE_11__ {scalar_t__ fogPass; } ;
struct TYPE_10__ {TYPE_4__* fogs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,float*) ; 
 int DGEN_NONE ; 
 int FOGDEF_USE_BONE_ANIMATION ; 
 int FOGDEF_USE_DEFORM_VERTEXES ; 
 int FOGDEF_USE_VERTEX_ANIMATION ; 
 scalar_t__ FP_EQUAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*) ; 
 int GLS_DEPTHFUNC_EQUAL ; 
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ; 
 int GLS_SRCBLEND_SRC_ALPHA ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIFORM_ALPHATEST ; 
 int /*<<< orphan*/  UNIFORM_BONEMATRIX ; 
 int /*<<< orphan*/  UNIFORM_COLOR ; 
 int /*<<< orphan*/  UNIFORM_DEFORMGEN ; 
 int /*<<< orphan*/  UNIFORM_DEFORMPARAMS ; 
 int /*<<< orphan*/  UNIFORM_FOGDEPTH ; 
 int /*<<< orphan*/  UNIFORM_FOGDISTANCE ; 
 int /*<<< orphan*/  UNIFORM_FOGEYET ; 
 int /*<<< orphan*/  UNIFORM_MODELVIEWPROJECTIONMATRIX ; 
 int /*<<< orphan*/  UNIFORM_TIME ; 
 int /*<<< orphan*/  UNIFORM_VERTEXLERP ; 
 TYPE_8__ backEnd ; 
 TYPE_7__ glState ; 
 TYPE_6__ tess ; 
 TYPE_5__ tr ; 

__attribute__((used)) static void FUNC11( void ) {
	fog_t		*fog;
	vec4_t  color;
	vec4_t	fogDistanceVector, fogDepthVector = {0, 0, 0, 0};
	float	eyeT = 0;
	shaderProgram_t *sp;

	int deformGen;
	vec5_t deformParams;

	FUNC0(&deformGen, deformParams);

	{
		int index = 0;

		if (deformGen != DGEN_NONE)
			index |= FOGDEF_USE_DEFORM_VERTEXES;

		if (glState.vertexAnimation)
			index |= FOGDEF_USE_VERTEX_ANIMATION;
		else if (glState.boneAnimation)
			index |= FOGDEF_USE_BONE_ANIMATION;
		
		sp = &tr.fogShader[index];
	}

	backEnd.pc.c_fogDraws++;

	FUNC2(sp);

	fog = tr.world->fogs + tess.fogNum;

	FUNC6(sp, UNIFORM_MODELVIEWPROJECTIONMATRIX, glState.modelviewProjection);

	FUNC3(sp, UNIFORM_VERTEXLERP, glState.vertexAttribsInterpolation);

	if (glState.boneAnimation)
	{
		FUNC7(sp, UNIFORM_BONEMATRIX, glState.boneMatrix, glState.boneAnimation);
	}
	
	FUNC5(sp, UNIFORM_DEFORMGEN, deformGen);
	if (deformGen != DGEN_NONE)
	{
		FUNC4(sp, UNIFORM_DEFORMPARAMS, deformParams);
		FUNC3(sp, UNIFORM_TIME, tess.shaderTime);
	}

	color[0] = ((unsigned char *)(&fog->colorInt))[0] / 255.0f;
	color[1] = ((unsigned char *)(&fog->colorInt))[1] / 255.0f;
	color[2] = ((unsigned char *)(&fog->colorInt))[2] / 255.0f;
	color[3] = ((unsigned char *)(&fog->colorInt))[3] / 255.0f;
	FUNC8(sp, UNIFORM_COLOR, color);

	FUNC1(fogDistanceVector, fogDepthVector, &eyeT);

	FUNC8(sp, UNIFORM_FOGDISTANCE, fogDistanceVector);
	FUNC8(sp, UNIFORM_FOGDEPTH, fogDepthVector);
	FUNC3(sp, UNIFORM_FOGEYET, eyeT);

	if ( tess.shader->fogPass == FP_EQUAL ) {
		FUNC9( GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA | GLS_DEPTHFUNC_EQUAL );
	} else {
		FUNC9( GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA );
	}
	FUNC5(sp, UNIFORM_ALPHATEST, 0);

	FUNC10(tess.numIndexes, tess.firstIndex);
}