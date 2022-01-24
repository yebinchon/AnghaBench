#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  swapBuffersCommand_t ;
struct TYPE_24__ {int /*<<< orphan*/  finishCalled; } ;
struct TYPE_23__ {int integer; } ;
struct TYPE_22__ {scalar_t__ integer; } ;
struct TYPE_21__ {scalar_t__ integer; } ;
struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {unsigned char* (* Hunk_AllocateTempMemory ) (int) ;int /*<<< orphan*/  (* Hunk_FreeTempMemory ) (unsigned char*) ;} ;
struct TYPE_18__ {scalar_t__ numIndexes; } ;
struct TYPE_17__ {int /*<<< orphan*/ * renderFbo; int /*<<< orphan*/ * msaaResolveFbo; } ;
struct TYPE_16__ {long c_overDraw; } ;
struct TYPE_15__ {void* projection2D; void* framePostProcessed; TYPE_1__ pc; } ;
struct TYPE_14__ {int vidWidth; int vidHeight; } ;
struct TYPE_13__ {scalar_t__ framebufferObject; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_NEAREST ; 
 int /*<<< orphan*/  GL_STENCIL_INDEX ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_12__ backEnd ; 
 TYPE_11__ glConfig ; 
 TYPE_10__ glRefConfig ; 
 TYPE_9__ glState ; 
 void* qfalse ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 TYPE_8__* r_finish ; 
 TYPE_7__* r_hdr ; 
 TYPE_6__* r_measureOverdraw ; 
 TYPE_5__* r_showImages ; 
 TYPE_4__ ri ; 
 unsigned char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 TYPE_3__ tess ; 
 TYPE_2__ tr ; 

const void	*FUNC9( const void *data ) {
	const swapBuffersCommand_t	*cmd;

	// finish any 2D drawing if needed
	if ( tess.numIndexes ) {
		FUNC3();
	}

	// texture swapping test
	if ( r_showImages->integer ) {
		FUNC4();
	}

	cmd = (const swapBuffersCommand_t *)data;

	// we measure overdraw by reading back the stencil buffer and
	// counting up the number of increments that have happened
	if ( r_measureOverdraw->integer ) {
		int i;
		long sum = 0;
		unsigned char *stencilReadback;

		stencilReadback = ri.Hunk_AllocateTempMemory( glConfig.vidWidth * glConfig.vidHeight );
		FUNC6( 0, 0, glConfig.vidWidth, glConfig.vidHeight, GL_STENCIL_INDEX, GL_UNSIGNED_BYTE, stencilReadback );

		for ( i = 0; i < glConfig.vidWidth * glConfig.vidHeight; i++ ) {
			sum += stencilReadback[i];
		}

		backEnd.pc.c_overDraw += sum;
		ri.Hunk_FreeTempMemory( stencilReadback );
	}

	if (glRefConfig.framebufferObject)
	{
		if (!backEnd.framePostProcessed)
		{
			if (tr.msaaResolveFbo && r_hdr->integer)
			{
				// Resolving an RGB16F MSAA FBO to the screen messes with the brightness, so resolve to an RGB16F FBO first
				FUNC0(tr.renderFbo, NULL, tr.msaaResolveFbo, NULL, GL_COLOR_BUFFER_BIT, GL_NEAREST);
				FUNC0(tr.msaaResolveFbo, NULL, NULL, NULL, GL_COLOR_BUFFER_BIT, GL_NEAREST);
			}
			else if (tr.renderFbo)
			{
				FUNC0(tr.renderFbo, NULL, NULL, NULL, GL_COLOR_BUFFER_BIT, GL_NEAREST);
			}
		}
	}

	if ( r_finish->integer == 1 && !glState.finishCalled ) {
		FUNC5();
	}

	FUNC2( "***************** RB_SwapBuffers *****************\n\n\n" );

	FUNC1();

	backEnd.framePostProcessed = qfalse;
	backEnd.projection2D = qfalse;

	return (const void *)(cmd + 1);
}