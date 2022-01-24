#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec5_t ;
typedef  float* vec4_t ;
typedef  float* vec3_t ;
typedef  int /*<<< orphan*/  shaderProgram_t ;
struct TYPE_10__ {float radius; float* color; scalar_t__ additive; int /*<<< orphan*/  transformed; } ;
typedef  TYPE_3__ dlight_t ;
struct TYPE_9__ {int /*<<< orphan*/  c_dlightVertexes; int /*<<< orphan*/  c_dlightIndexes; int /*<<< orphan*/  c_totalIndexes; int /*<<< orphan*/  c_dlightDraws; } ;
struct TYPE_8__ {int num_dlights; TYPE_3__* dlights; } ;
struct TYPE_14__ {TYPE_2__ pc; TYPE_1__ refdef; } ;
struct TYPE_13__ {int /*<<< orphan*/  vertexAttribsInterpolation; int /*<<< orphan*/  modelviewProjection; } ;
struct TYPE_12__ {int dlightBits; scalar_t__ numVertexes; scalar_t__ numIndexes; int /*<<< orphan*/  firstIndex; int /*<<< orphan*/  shaderTime; } ;
struct TYPE_11__ {int /*<<< orphan*/  dlightImage; int /*<<< orphan*/ * dlightShader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int DGEN_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float*) ; 
 int GLS_ATEST_GT_0 ; 
 int GLS_DEPTHFUNC_EQUAL ; 
 int GLS_DSTBLEND_ONE ; 
 int GLS_SRCBLEND_DST_COLOR ; 
 int GLS_SRCBLEND_ONE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TB_COLORMAP ; 
 int /*<<< orphan*/  UNIFORM_ALPHATEST ; 
 int /*<<< orphan*/  UNIFORM_COLOR ; 
 int /*<<< orphan*/  UNIFORM_DEFORMGEN ; 
 int /*<<< orphan*/  UNIFORM_DEFORMPARAMS ; 
 int /*<<< orphan*/  UNIFORM_DLIGHTINFO ; 
 int /*<<< orphan*/  UNIFORM_MODELVIEWPROJECTIONMATRIX ; 
 int /*<<< orphan*/  UNIFORM_TIME ; 
 int /*<<< orphan*/  UNIFORM_VERTEXLERP ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,float*) ; 
 TYPE_7__ backEnd ; 
 TYPE_6__ glState ; 
 TYPE_5__ tess ; 
 TYPE_4__ tr ; 

__attribute__((used)) static void FUNC11( void ) {
	int		l;
	vec3_t	origin;
	float	scale;
	float	radius;
	int deformGen;
	vec5_t deformParams;

	if ( !backEnd.refdef.num_dlights ) {
		return;
	}

	FUNC0(&deformGen, deformParams);

	for ( l = 0 ; l < backEnd.refdef.num_dlights ; l++ ) {
		dlight_t	*dl;
		shaderProgram_t *sp;
		vec4_t vector;

		if ( !( tess.dlightBits & ( 1 << l ) ) ) {
			continue;	// this surface definitely doesn't have any of this light
		}

		dl = &backEnd.refdef.dlights[l];
		FUNC10( dl->transformed, origin );
		radius = dl->radius;
		scale = 1.0f / radius;

		sp = &tr.dlightShader[deformGen == DGEN_NONE ? 0 : 1];

		backEnd.pc.c_dlightDraws++;

		FUNC1(sp);

		FUNC5(sp, UNIFORM_MODELVIEWPROJECTIONMATRIX, glState.modelviewProjection);

		FUNC2(sp, UNIFORM_VERTEXLERP, glState.vertexAttribsInterpolation);
		
		FUNC4(sp, UNIFORM_DEFORMGEN, deformGen);
		if (deformGen != DGEN_NONE)
		{
			FUNC3(sp, UNIFORM_DEFORMPARAMS, deformParams);
			FUNC2(sp, UNIFORM_TIME, tess.shaderTime);
		}

		vector[0] = dl->color[0];
		vector[1] = dl->color[1];
		vector[2] = dl->color[2];
		vector[3] = 1.0f;
		FUNC6(sp, UNIFORM_COLOR, vector);

		vector[0] = origin[0];
		vector[1] = origin[1];
		vector[2] = origin[2];
		vector[3] = scale;
		FUNC6(sp, UNIFORM_DLIGHTINFO, vector);
	  
		FUNC7( tr.dlightImage, TB_COLORMAP );

		// include GLS_DEPTHFUNC_EQUAL so alpha tested surfaces don't add light
		// where they aren't rendered
		if ( dl->additive ) {
			FUNC8( GLS_ATEST_GT_0 | GLS_SRCBLEND_ONE | GLS_DSTBLEND_ONE | GLS_DEPTHFUNC_EQUAL );
		}
		else {
			FUNC8( GLS_ATEST_GT_0 | GLS_SRCBLEND_DST_COLOR | GLS_DSTBLEND_ONE | GLS_DEPTHFUNC_EQUAL );
		}

		FUNC4(sp, UNIFORM_ALPHATEST, 1);

		FUNC9(tess.numIndexes, tess.firstIndex);

		backEnd.pc.c_totalIndexes += tess.numIndexes;
		backEnd.pc.c_dlightIndexes += tess.numIndexes;
		backEnd.pc.c_dlightVertexes += tess.numVertexes;
	}
}