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
typedef  int /*<<< orphan*/  mat4_t ;
struct TYPE_10__ {double time; double floatTime; int /*<<< orphan*/  vertFlipBuffer; } ;
struct TYPE_8__ {int /*<<< orphan*/  vertFlipBuffer; } ;
struct TYPE_14__ {TYPE_3__ refdef; TYPE_2__* last2DFBO; scalar_t__ projection2D; TYPE_1__ viewParms; } ;
struct TYPE_13__ {int vidWidth; int vidHeight; } ;
struct TYPE_12__ {TYPE_2__* currentFBO; } ;
struct TYPE_11__ {double (* Milliseconds ) () ;} ;
struct TYPE_9__ {int width; int height; } ;

/* Variables and functions */
 int /*<<< orphan*/  CT_TWO_SIDED ; 
 int GLS_DEPTHTEST_DISABLE ; 
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ; 
 int GLS_SRCBLEND_SRC_ALPHA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_7__ backEnd ; 
 TYPE_6__ glConfig ; 
 TYPE_5__ glState ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ qtrue ; 
 TYPE_4__ ri ; 
 double FUNC8 () ; 

void	FUNC9 (void) {
	mat4_t matrix;
	int width, height;

	if (backEnd.projection2D && backEnd.last2DFBO == glState.currentFBO)
		return;
	backEnd.viewParms.vertFlipBuffer = backEnd.refdef.vertFlipBuffer;

	backEnd.projection2D = qtrue;
	backEnd.last2DFBO = glState.currentFBO;

	if (glState.currentFBO)
	{
		width = glState.currentFBO->width;
		height = glState.currentFBO->height;
	}
	else
	{
		width = glConfig.vidWidth;
		height = glConfig.vidHeight;
	}

	// set 2D virtual screen size
	FUNC7( 0, 0, width, height );
	FUNC6( 0, 0, width, height );

	FUNC5(0, width, height, 0, 0, 1, matrix);
	FUNC2(matrix);
	FUNC4(matrix);
	FUNC1(matrix);

	FUNC3( GLS_DEPTHTEST_DISABLE |
			  GLS_SRCBLEND_SRC_ALPHA |
			  GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA );

	FUNC0( CT_TWO_SIDED );

	// set time for 2D shaders
	backEnd.refdef.time = ri.Milliseconds();
	backEnd.refdef.floatTime = backEnd.refdef.time * 0.001;
}