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
struct TYPE_2__ {scalar_t__ logFile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ level ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7( int restart ) {
	FUNC2 ("==== ShutdownGame ====\n");

	if ( level.logFile ) {
		FUNC1("ShutdownGame:\n" );
		FUNC1("------------------------------------------------------------\n" );
		FUNC6( level.logFile );
		level.logFile = 0;
	}

	// write all the client session data so we can get it back
	FUNC3();

	if ( FUNC5( "bot_enable" ) ) {
		FUNC0( restart );
	}

	// Clear any custom items we may have loaded.
	FUNC4();
}