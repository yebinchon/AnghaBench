#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  swapBuffersCommand_t ;
struct TYPE_10__ {long c_overDraw; } ;
struct TYPE_18__ {int /*<<< orphan*/  projection2D; TYPE_1__ pc; } ;
struct TYPE_17__ {int vidWidth; int vidHeight; } ;
struct TYPE_16__ {int /*<<< orphan*/  finishCalled; } ;
struct TYPE_15__ {int integer; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {unsigned char* (* Hunk_AllocateTempMemory ) (int) ;int /*<<< orphan*/  (* Hunk_FreeTempMemory ) (unsigned char*) ;} ;
struct TYPE_11__ {scalar_t__ numIndexes; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_STENCIL_INDEX ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_9__ backEnd ; 
 TYPE_8__ glConfig ; 
 TYPE_7__ glState ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 TYPE_6__* r_finish ; 
 TYPE_5__* r_measureOverdraw ; 
 TYPE_4__* r_showImages ; 
 TYPE_3__ ri ; 
 unsigned char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 TYPE_2__ tess ; 

const void	*FUNC8( const void *data ) {
	const swapBuffersCommand_t	*cmd;

	// finish any 2D drawing if needed
	if ( tess.numIndexes ) {
		FUNC2();
	}

	// texture swapping test
	if ( r_showImages->integer ) {
		FUNC3();
	}

	cmd = (const swapBuffersCommand_t *)data;

	// we measure overdraw by reading back the stencil buffer and
	// counting up the number of increments that have happened
	if ( r_measureOverdraw->integer ) {
		int i;
		long sum = 0;
		unsigned char *stencilReadback;

		stencilReadback = ri.Hunk_AllocateTempMemory( glConfig.vidWidth * glConfig.vidHeight );
		FUNC5( 0, 0, glConfig.vidWidth, glConfig.vidHeight, GL_STENCIL_INDEX, GL_UNSIGNED_BYTE, stencilReadback );

		for ( i = 0; i < glConfig.vidWidth * glConfig.vidHeight; i++ ) {
			sum += stencilReadback[i];
		}

		backEnd.pc.c_overDraw += sum;
		ri.Hunk_FreeTempMemory( stencilReadback );
	}


	if ( r_finish->integer == 1 && !glState.finishCalled ) {
		FUNC4();
	}

	FUNC1( "***************** RB_SwapBuffers *****************\n\n\n" );

	FUNC0();

	backEnd.projection2D = qfalse;

	return (const void *)(cmd + 1);
}