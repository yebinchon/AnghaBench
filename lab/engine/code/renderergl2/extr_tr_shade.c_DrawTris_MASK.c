#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
typedef  int /*<<< orphan*/  shaderProgram_t ;
struct TYPE_5__ {int /*<<< orphan*/  firstIndex; int /*<<< orphan*/  numIndexes; } ;
typedef  TYPE_1__ shaderCommands_t ;
struct TYPE_7__ {int /*<<< orphan*/  modelviewProjection; } ;
struct TYPE_6__ {int /*<<< orphan*/  textureColorShader; int /*<<< orphan*/  whiteImage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int GLS_DEPTHMASK_TRUE ; 
 int GLS_POLYMODE_LINE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TB_COLORMAP ; 
 int /*<<< orphan*/  UNIFORM_ALPHATEST ; 
 int /*<<< orphan*/  UNIFORM_COLOR ; 
 int /*<<< orphan*/  UNIFORM_MODELVIEWPROJECTIONMATRIX ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int,int) ; 
 TYPE_3__ glState ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__ tr ; 

__attribute__((used)) static void FUNC9 (shaderCommands_t *input) {
	FUNC4( tr.whiteImage, TB_COLORMAP );

	FUNC5( GLS_POLYMODE_LINE | GLS_DEPTHMASK_TRUE );
	FUNC8( 0, 0 );

	{
		shaderProgram_t *sp = &tr.textureColorShader;
		vec4_t color;

		FUNC0(sp);
		
		FUNC2(sp, UNIFORM_MODELVIEWPROJECTIONMATRIX, glState.modelviewProjection);
		FUNC7(color, 1, 1, 1, 1);
		FUNC3(sp, UNIFORM_COLOR, color);
		FUNC1(sp, UNIFORM_ALPHATEST, 0);

		FUNC6(input->numIndexes, input->firstIndex);
	}

	FUNC8( 0, 1 );
}