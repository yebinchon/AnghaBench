#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vmInterpret_t ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {int /*<<< orphan*/  uiStarted; } ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 scalar_t__ CA_AUTHORIZING ; 
 int /*<<< orphan*/  CL_UISystemCalls ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int UI_API_VERSION ; 
 int /*<<< orphan*/  UI_GETAPIVERSION ; 
 int /*<<< orphan*/  UI_INIT ; 
 int UI_OLD_API_VERSION ; 
 scalar_t__ VMI_BYTECODE ; 
 scalar_t__ VMI_COMPILED ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ cl_connectedToPureServer ; 
 TYPE_2__ clc ; 
 TYPE_1__ cls ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/ * uivm ; 

void FUNC5( void ) {
	int		v;
	vmInterpret_t		interpret;

	// load the dll or bytecode
	interpret = FUNC1("vm_ui");
	if(cl_connectedToPureServer)
	{
		// if sv_pure is set we only allow qvms to be loaded
		if(interpret != VMI_COMPILED && interpret != VMI_BYTECODE)
			interpret = VMI_COMPILED;
	}

	uivm = FUNC3( "ui", CL_UISystemCalls, interpret );
	if ( !uivm ) {
		FUNC0( ERR_FATAL, "VM_Create on UI failed" );
	}

	// sanity check
	v = FUNC2( uivm, UI_GETAPIVERSION );
	if (v == UI_OLD_API_VERSION) {
//		Com_Printf(S_COLOR_YELLOW "WARNING: loading old Quake III Arena User Interface version %d\n", v );
		// init for this gamestate
		FUNC2( uivm, UI_INIT, (clc.state >= CA_AUTHORIZING && clc.state < CA_ACTIVE));
	}
	else if (v != UI_API_VERSION) {
		// Free uivm now, so UI_SHUTDOWN doesn't get called later.
		FUNC4( uivm );
		uivm = NULL;

		FUNC0( ERR_DROP, "User Interface is version %d, expected %d", v, UI_API_VERSION );
		cls.uiStarted = qfalse;
	}
	else {
		// init for this gamestate
		FUNC2( uivm, UI_INIT, (clc.state >= CA_AUTHORIZING && clc.state < CA_ACTIVE) );
	}
}