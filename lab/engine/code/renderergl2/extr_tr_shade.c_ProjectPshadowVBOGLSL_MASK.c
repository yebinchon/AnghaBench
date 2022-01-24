#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec5_t ;
typedef  float* vec4_t ;
typedef  float* vec3_t ;
typedef  int /*<<< orphan*/  shaderProgram_t ;
struct TYPE_11__ {int pshadowBits; scalar_t__ numIndexes; int /*<<< orphan*/  firstIndex; } ;
typedef  TYPE_3__ shaderCommands_t ;
struct TYPE_12__ {float* lightOrigin; float lightRadius; float viewRadius; int /*<<< orphan*/ * lightViewAxis; } ;
typedef  TYPE_4__ pshadow_t ;
struct TYPE_10__ {int /*<<< orphan*/  c_totalIndexes; } ;
struct TYPE_9__ {int num_pshadows; TYPE_4__* pshadows; } ;
struct TYPE_15__ {TYPE_2__ pc; TYPE_1__ refdef; } ;
struct TYPE_14__ {int /*<<< orphan*/  modelviewProjection; } ;
struct TYPE_13__ {int /*<<< orphan*/ * pshadowMaps; int /*<<< orphan*/  pshadowShader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float*) ; 
 int GLS_DEPTHFUNC_EQUAL ; 
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ; 
 int GLS_SRCBLEND_SRC_ALPHA ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TB_DIFFUSEMAP ; 
 int /*<<< orphan*/  UNIFORM_ALPHATEST ; 
 int /*<<< orphan*/  UNIFORM_LIGHTFORWARD ; 
 int /*<<< orphan*/  UNIFORM_LIGHTORIGIN ; 
 int /*<<< orphan*/  UNIFORM_LIGHTRADIUS ; 
 int /*<<< orphan*/  UNIFORM_LIGHTRIGHT ; 
 int /*<<< orphan*/  UNIFORM_LIGHTUP ; 
 int /*<<< orphan*/  UNIFORM_MODELVIEWPROJECTIONMATRIX ; 
 int /*<<< orphan*/  FUNC10 (float*,float*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,float,float*) ; 
 TYPE_8__ backEnd ; 
 TYPE_7__ glState ; 
 TYPE_3__ tess ; 
 TYPE_5__ tr ; 

__attribute__((used)) static void FUNC12( void ) {
	int		l;
	vec3_t	origin;
	float	radius;

	int deformGen;
	vec5_t deformParams;

	shaderCommands_t *input = &tess;

	if ( !backEnd.refdef.num_pshadows ) {
		return;
	}
	
	FUNC0(&deformGen, deformParams);

	for ( l = 0 ; l < backEnd.refdef.num_pshadows ; l++ ) {
		pshadow_t	*ps;
		shaderProgram_t *sp;
		vec4_t vector;

		if ( !( tess.pshadowBits & ( 1 << l ) ) ) {
			continue;	// this surface definitely doesn't have any of this shadow
		}

		ps = &backEnd.refdef.pshadows[l];
		FUNC10( ps->lightOrigin, origin );
		radius = ps->lightRadius;

		sp = &tr.pshadowShader;

		FUNC1(sp);

		FUNC4(sp, UNIFORM_MODELVIEWPROJECTIONMATRIX, glState.modelviewProjection);

		FUNC10(origin, vector);
		vector[3] = 1.0f;
		FUNC6(sp, UNIFORM_LIGHTORIGIN, vector);

		FUNC11(ps->lightViewAxis[0], 1.0f / ps->viewRadius, vector);
		FUNC5(sp, UNIFORM_LIGHTFORWARD, vector);

		FUNC11(ps->lightViewAxis[1], 1.0f / ps->viewRadius, vector);
		FUNC5(sp, UNIFORM_LIGHTRIGHT, vector);

		FUNC11(ps->lightViewAxis[2], 1.0f / ps->viewRadius, vector);
		FUNC5(sp, UNIFORM_LIGHTUP, vector);

		FUNC2(sp, UNIFORM_LIGHTRADIUS, radius);
	  
		// include GLS_DEPTHFUNC_EQUAL so alpha tested surfaces don't add light
		// where they aren't rendered
		FUNC8( GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA | GLS_DEPTHFUNC_EQUAL );
		FUNC3(sp, UNIFORM_ALPHATEST, 0);

		FUNC7( tr.pshadowMaps[l], TB_DIFFUSEMAP );

		//
		// draw
		//

		FUNC9(input->numIndexes, input->firstIndex);

		backEnd.pc.c_totalIndexes += tess.numIndexes;
		//backEnd.pc.c_dlightIndexes += tess.numIndexes;
	}
}