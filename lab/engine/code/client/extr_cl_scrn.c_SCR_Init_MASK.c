#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  CVAR_CHEAT ; 
 void* FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 void* cl_debuggraph ; 
 void* cl_graphheight ; 
 void* cl_graphscale ; 
 void* cl_graphshift ; 
 void* cl_timegraph ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  scr_initialized ; 

void FUNC1( void ) {
	cl_timegraph = FUNC0 ("timegraph", "0", CVAR_CHEAT);
	cl_debuggraph = FUNC0 ("debuggraph", "0", CVAR_CHEAT);
	cl_graphheight = FUNC0 ("graphheight", "32", CVAR_CHEAT);
	cl_graphscale = FUNC0 ("graphscale", "1", CVAR_CHEAT);
	cl_graphshift = FUNC0 ("graphshift", "0", CVAR_CHEAT);

	scr_initialized = qtrue;
}