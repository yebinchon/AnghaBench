#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int buffer; int /*<<< orphan*/  commandId; } ;
typedef  TYPE_2__ drawBufferCommand_t ;
struct TYPE_22__ {void* finishCalled; } ;
struct TYPE_21__ {int /*<<< orphan*/  string; } ;
struct TYPE_20__ {void* modified; } ;
struct TYPE_19__ {int /*<<< orphan*/  integer; } ;
struct TYPE_18__ {void* modified; int /*<<< orphan*/  string; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* Error ) (int /*<<< orphan*/ ,char*,int) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  vertFlipBuffer; int /*<<< orphan*/  stereoFrame; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_16__ {TYPE_1__ refdef; int /*<<< orphan*/  registered; } ;
struct TYPE_13__ {int /*<<< orphan*/  vidHeight; int /*<<< orphan*/  vidWidth; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_FATAL ; 
 scalar_t__ GL_BACK ; 
 scalar_t__ GL_FRONT ; 
 int GL_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RC_DRAW_BUFFER ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  STEREO_CENTER ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*) ; 
 TYPE_10__ glConfig ; 
 TYPE_9__ glState ; 
 void* qfalse ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_8__* r_drawBuffer ; 
 TYPE_7__* r_gamma ; 
 TYPE_6__* r_ignoreGLErrors ; 
 TYPE_5__* r_textureMode ; 
 TYPE_4__ ri ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_3__ tr ; 

void FUNC8( void ) {
	drawBufferCommand_t	*cmd = NULL;
	if ( !tr.registered ) {
		return;
	}

	FUNC5( &glConfig );
	tr.refdef.width = glConfig.vidWidth;
	tr.refdef.height = glConfig.vidHeight;
	glState.finishCalled = qfalse;

	//
	// texturemode stuff
	//
	if ( r_textureMode->modified ) {
		FUNC3();
		FUNC0( r_textureMode->string );
		r_textureMode->modified = qfalse;
	}

	//
	// gamma stuff
	//
	if ( r_gamma->modified ) {
		r_gamma->modified = qfalse;

		FUNC3();
		FUNC4();
	}

	// check for errors
	if ( !r_ignoreGLErrors->integer )
	{
		int	err;

		FUNC3();
		if ((err = FUNC6()) != GL_NO_ERROR)
			ri.Error(ERR_FATAL, "RE_BeginFrame() - glGetError() failed (0x%x)!", err);
	}

	if( !(cmd = FUNC2(sizeof(*cmd))) )
		return;
	if(cmd)
	{
		cmd->commandId = RC_DRAW_BUFFER;
		if (!FUNC1(r_drawBuffer->string, "GL_FRONT"))
			cmd->buffer = (int)GL_FRONT;
		else
			cmd->buffer = (int)GL_BACK;
	}

	tr.refdef.stereoFrame = STEREO_CENTER;

	tr.refdef.vertFlipBuffer = qtrue;
}