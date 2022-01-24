#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int integer; } ;
typedef  TYPE_1__ cvar_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_6__ {scalar_t__ integer; } ;

/* Variables and functions */
 int CVAR_ARCHIVE ; 
 int CVAR_LATCH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  Com_Meminfo_f ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 TYPE_1__* FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  DEF_COMHUNKMEGS_S ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  Hunk_Log ; 
 int /*<<< orphan*/  Hunk_SmallLog ; 
 int MIN_COMHUNKMEGS ; 
 int MIN_DEDICATED_COMHUNKMEGS ; 
 int /*<<< orphan*/  Z_LogHeap ; 
 scalar_t__ FUNC7 (int,int) ; 
 TYPE_2__* com_dedicated ; 
 int /*<<< orphan*/ * s_hunkData ; 
 scalar_t__ s_hunkDataRaw ; 
 int s_hunkTotal ; 

void FUNC8( void ) {
	cvar_t	*cv;
	int nMinAlloc;
	char *pMsg = NULL;

	// make sure the file system has allocated and "not" freed any temp blocks
	// this allows the config and product id files ( journal files too ) to be loaded
	// by the file system without redunant routines in the file system utilizing different 
	// memory systems
	if (FUNC5() != 0) {
		FUNC1( ERR_FATAL, "Hunk initialization failed. File system load stack not zero");
	}

	// allocate the stack based hunk allocator
	cv = FUNC3( "com_hunkMegs", DEF_COMHUNKMEGS_S, CVAR_LATCH | CVAR_ARCHIVE );
	FUNC4(cv, "The size of the hunk memory segment");

	// if we are not dedicated min allocation is 56, otherwise min is 1
	if (com_dedicated && com_dedicated->integer) {
		nMinAlloc = MIN_DEDICATED_COMHUNKMEGS;
		pMsg = "Minimum com_hunkMegs for a dedicated server is %i, allocating %i megs.\n";
	}
	else {
		nMinAlloc = MIN_COMHUNKMEGS;
		pMsg = "Minimum com_hunkMegs is %i, allocating %i megs.\n";
	}

	if ( cv->integer < nMinAlloc ) {
		s_hunkTotal = 1024 * 1024 * nMinAlloc;
	    FUNC2(pMsg, nMinAlloc, s_hunkTotal / (1024 * 1024));
	} else {
		s_hunkTotal = cv->integer * 1024 * 1024;
	}

	s_hunkDataRaw = FUNC7( s_hunkTotal + 31, 1 );
	if ( !s_hunkDataRaw ) {
		FUNC1( ERR_FATAL, "Hunk data failed to allocate %i megs", s_hunkTotal / (1024*1024) );
	}
	// cacheline align
	s_hunkData = (byte *) ( ( (intptr_t)s_hunkDataRaw + 31 ) & ~31 );
	FUNC6();

	FUNC0( "meminfo", Com_Meminfo_f );
#ifdef ZONE_DEBUG
	Cmd_AddCommand( "zonelog", Z_LogHeap );
#endif
#ifdef HUNK_DEBUG
	Cmd_AddCommand( "hunklog", Hunk_Log );
	Cmd_AddCommand( "hunksmalllog", Hunk_SmallLog );
#endif
}