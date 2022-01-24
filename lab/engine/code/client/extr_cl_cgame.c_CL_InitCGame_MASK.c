#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vmInterpret_t ;
struct TYPE_5__ {char* stringData; int* stringOffsets; } ;
struct TYPE_8__ {int /*<<< orphan*/  mapname; TYPE_1__ gameState; } ;
struct TYPE_7__ {int /*<<< orphan*/  state; int /*<<< orphan*/  demoplaying; int /*<<< orphan*/  clientNum; int /*<<< orphan*/  lastExecutedServerCommand; int /*<<< orphan*/  serverMessageSequence; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* EndRegistration ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CA_LOADING ; 
 int /*<<< orphan*/  CA_PRIMED ; 
 int /*<<< orphan*/  CG_INIT ; 
 int /*<<< orphan*/  CL_CgameSystemCalls ; 
 size_t CS_SERVERINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 char* FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 
 scalar_t__ VMI_BYTECODE ; 
 scalar_t__ VMI_COMPILED ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  cgvm ; 
 TYPE_4__ cl ; 
 int /*<<< orphan*/  cl_connectedToCheatServer ; 
 scalar_t__ cl_connectedToPureServer ; 
 TYPE_3__ clc ; 
 TYPE_2__ re ; 
 int /*<<< orphan*/  FUNC13 () ; 

void FUNC14( void ) {
	const char			*info;
	const char			*mapname;
	int					t1, t2;
	vmInterpret_t		interpret;

	t1 = FUNC10();

	// put away the console
	FUNC5();

	// find the current mapname
	info = cl.gameState.stringData + cl.gameState.stringOffsets[ CS_SERVERINFO ];
	mapname = FUNC8( info, "mapname" );
	FUNC3( cl.mapname, sizeof( cl.mapname ), "maps/%s.bsp", mapname );

	// load the dll or bytecode
	interpret = FUNC7("vm_cgame");
	if(cl_connectedToPureServer)
	{
		// if sv_pure is set we only allow qvms to be loaded
		if(interpret != VMI_COMPILED && interpret != VMI_BYTECODE)
			interpret = VMI_COMPILED;
	}

	cgvm = FUNC12( "cgame", CL_CgameSystemCalls, interpret );
	if ( !cgvm ) {
		FUNC0( ERR_DROP, "VM_Create on cgame failed" );
	}
	clc.state = CA_LOADING;

	// init for this gamestate
	// use the lastExecutedServerCommand instead of the serverCommandSequence
	// otherwise server commands sent just before a gamestate are dropped
	FUNC11( cgvm, CG_INIT, clc.serverMessageSequence, clc.lastExecutedServerCommand, clc.clientNum );

	// reset any CVAR_CHEAT cvars registered by cgame
	if ( !clc.demoplaying && !cl_connectedToCheatServer )
		FUNC6();

	// we will send a usercmd this frame, which
	// will cause the server to send us the first snapshot
	clc.state = CA_PRIMED;

	t2 = FUNC10();

	FUNC1( "CL_InitCGame: %5.2f seconds\n", (t2-t1)/1000.0 );

	// have the renderer touch all its images, so they are present
	// on the card even if the driver does deferred loading
	re.EndRegistration();

	// make sure everything is paged in
	if (!FUNC9()) {
		FUNC2();
	}

	// clear anything that got printed
	FUNC4 ();
}