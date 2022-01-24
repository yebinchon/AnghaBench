#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {double time; double floatTime; scalar_t__ vertFlipBuffer; } ;
struct TYPE_6__ {scalar_t__ vertFlipBuffer; } ;
struct TYPE_10__ {TYPE_2__ refdef; TYPE_1__ viewParms; int /*<<< orphan*/  projection2D; } ;
struct TYPE_9__ {int /*<<< orphan*/  vidHeight; int /*<<< orphan*/  vidWidth; } ;
struct TYPE_8__ {double (* Milliseconds ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CT_TWO_SIDED ; 
 int GLS_DEPTHTEST_DISABLE ; 
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ; 
 int GLS_SRCBLEND_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_CLIP_PLANE0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_5__ backEnd ; 
 TYPE_4__ glConfig ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_3__ ri ; 
 double FUNC8 () ; 

void	FUNC9 (void) {
	backEnd.projection2D = qtrue;
	backEnd.viewParms.vertFlipBuffer = backEnd.refdef.vertFlipBuffer;

	// set 2D virtual screen size
	FUNC7( 0, 0, glConfig.vidWidth, glConfig.vidHeight );
	FUNC6( 0, 0, glConfig.vidWidth, glConfig.vidHeight );
	FUNC4(GL_PROJECTION);
    FUNC3 ();
	if(backEnd.viewParms.vertFlipBuffer)
	{
		FUNC5 (0, glConfig.vidWidth, 0, glConfig.vidHeight, 0, 1);
	}
	else
	{
		FUNC5 (0, glConfig.vidWidth, glConfig.vidHeight, 0, 0, 1);
	}
	FUNC4(GL_MODELVIEW);
    FUNC3 ();

	FUNC1( GLS_DEPTHTEST_DISABLE |
			  GLS_SRCBLEND_SRC_ALPHA |
			  GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA );

	FUNC0( CT_TWO_SIDED );
	FUNC2( GL_CLIP_PLANE0 );

	// set time for 2D shaders
	backEnd.refdef.time = ri.Milliseconds();
	backEnd.refdef.floatTime = backEnd.refdef.time * 0.001;
}