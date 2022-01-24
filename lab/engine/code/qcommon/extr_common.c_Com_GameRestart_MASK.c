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
typedef  scalar_t__ qboolean ;
struct TYPE_4__ {void* integer; } ;
struct TYPE_3__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_2__* com_cl_running ; 
 scalar_t__ com_fullyInitialized ; 
 void* com_gameClientRestarting ; 
 void* com_gameRestarting ; 
 TYPE_1__* com_sv_running ; 
 void* qfalse ; 
 void* qtrue ; 

void FUNC9(int checksumFeed, qboolean disconnect)
{
	// make sure no recursion can be triggered
	if(!com_gameRestarting && com_fullyInitialized)
	{
		com_gameRestarting = qtrue;
		com_gameClientRestarting = com_cl_running->integer;

		// Kill server if we have one
		if(com_sv_running->integer)
			FUNC8("Game directory changed");

		if(com_gameClientRestarting)
		{
			if(disconnect)
				FUNC0(qfalse);
				
			FUNC2("Game directory changed", disconnect, qfalse);
		}

		FUNC6(checksumFeed);
	
		// Clean out any user and VM created cvars
		FUNC5(qtrue);
		FUNC4();

		if(disconnect)
		{
			// We don't want to change any network settings if gamedir
			// change was triggered by a connect to server because the
			// new network settings might make the connection fail.
			FUNC7();
		}

		if(com_gameClientRestarting)
		{
			FUNC1();
			FUNC3(qfalse);
		}
		
		com_gameRestarting = qfalse;
		com_gameClientRestarting = qfalse;
	}
}