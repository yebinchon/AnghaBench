#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int integer; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int CVAR_ARCHIVE ; 
 int CVAR_LATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int DEF_COMZONEMEGS ; 
 int /*<<< orphan*/  DEF_COMZONEMEGS_S ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  mainzone ; 
 int s_zoneTotal ; 

void FUNC4( void ) {
	cvar_t	*cv;

	// Please note: com_zoneMegs can only be set on the command line, and
	// not in q3config.cfg or Com_StartupVariable, as they haven't been
	// executed by this point. It's a chicken and egg problem. We need the
	// memory manager configured to handle those places where you would
	// configure the memory manager.

	// allocate the random block zone
	cv = FUNC1( "com_zoneMegs", DEF_COMZONEMEGS_S, CVAR_LATCH | CVAR_ARCHIVE );

	if ( cv->integer < DEF_COMZONEMEGS ) {
		s_zoneTotal = 1024 * 1024 * DEF_COMZONEMEGS;
	} else {
		s_zoneTotal = cv->integer * 1024 * 1024;
	}

	mainzone = FUNC3( s_zoneTotal, 1 );
	if ( !mainzone ) {
		FUNC0( ERR_FATAL, "Zone data failed to allocate %i megs", s_zoneTotal / (1024*1024) );
	}
	FUNC2( mainzone, s_zoneTotal );

}