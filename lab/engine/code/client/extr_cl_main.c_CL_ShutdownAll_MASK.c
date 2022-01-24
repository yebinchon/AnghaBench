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
typedef  scalar_t__ qboolean ;
struct TYPE_6__ {scalar_t__ demorecording; } ;
struct TYPE_5__ {void* soundRegistered; void* rendererStarted; void* cgameStarted; void* uiStarted; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* Shutdown ) (void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_3__ clc ; 
 TYPE_2__ cls ; 
 void* qfalse ; 
 TYPE_1__ re ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

void FUNC9(qboolean shutdownRef)
{
	if(FUNC5())
		FUNC0();

	if(clc.demorecording)
		FUNC4();

#ifdef USE_CURL
	CL_cURL_Shutdown();
#endif
	// clear sounds
	FUNC7();
	// shutdown CGame
	FUNC1();
	// shutdown UI
	FUNC3();

	// shutdown the renderer
	if(shutdownRef)
		FUNC2();
	else if(re.Shutdown)
		re.Shutdown(qfalse);		// don't destroy window or context

	cls.uiStarted = qfalse;
	cls.cgameStarted = qfalse;
	cls.rendererStarted = qfalse;
	cls.soundRegistered = qfalse;
}