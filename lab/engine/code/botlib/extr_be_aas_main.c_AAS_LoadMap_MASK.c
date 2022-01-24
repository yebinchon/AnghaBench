#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* loaded; void* initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (char const*) ; 
 int BLERR_NOERROR ; 
 TYPE_1__ aasworld ; 
 void* qfalse ; 

int FUNC7(const char *mapname)
{
	int	errnum;

	//if no mapname is provided then the string indexes are updated
	if (!mapname)
	{
		return 0;
	} //end if
	//
	aasworld.initialized = qfalse;
	//NOTE: free the routing caches before loading a new map because
	// to free the caches the old number of areas, number of clusters
	// and number of areas in a clusters must be available
	FUNC0();
	//load the map
	errnum = FUNC6(mapname);
	if (errnum != BLERR_NOERROR)
	{
		aasworld.loaded = qfalse;
		return errnum;
	} //end if
	//
	FUNC5();
	//initialize the AAS link heap for the new map
	FUNC1();
	//initialize the AAS linked entities for the new map
	FUNC2();
	//initialize reachability for the new map
	FUNC4();
	//initialize the alternative routing
	FUNC3();
	//everything went ok
	return 0;
}