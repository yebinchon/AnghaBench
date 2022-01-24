#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int stencilBits; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {int /*<<< orphan*/  whiteImage; } ;

/* Variables and functions */
 int /*<<< orphan*/  CT_TWO_SIDED ; 
 int GLS_DEPTHMASK_TRUE ; 
 int GLS_DSTBLEND_ZERO ; 
 int GLS_SRCBLEND_DST_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_CLIP_PLANE0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_NOTEQUAL ; 
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  GL_STENCIL_TEST ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__ glConfig ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float,float,float) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int) ; 
 TYPE_2__* r_shadows ; 
 TYPE_1__ tr ; 

void FUNC12( void ) {
	if ( r_shadows->integer != 2 ) {
		return;
	}
	if ( glConfig.stencilBits < 4 ) {
		return;
	}
	FUNC7( GL_STENCIL_TEST );
	FUNC10( GL_NOTEQUAL, 0, 255 );

	FUNC6 (GL_CLIP_PLANE0);
	FUNC1( CT_TWO_SIDED );

	FUNC0( tr.whiteImage );

    FUNC9 ();

	FUNC4( 0.6f, 0.6f, 0.6f );
	FUNC2( GLS_DEPTHMASK_TRUE | GLS_SRCBLEND_DST_COLOR | GLS_DSTBLEND_ZERO );

//	qglColor3f( 1, 0, 0 );
//	GL_State( GLS_DEPTHMASK_TRUE | GLS_SRCBLEND_ONE | GLS_DSTBLEND_ZERO );

	FUNC3( GL_QUADS );
	FUNC11( -100, 100, -10 );
	FUNC11( 100, 100, -10 );
	FUNC11( 100, -100, -10 );
	FUNC11( -100, -100, -10 );
	FUNC8 ();

	FUNC5(1,1,1,1);
	FUNC6( GL_STENCIL_TEST );
}