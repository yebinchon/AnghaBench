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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_2__ {int frametime; int realtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__ uis ; 

qboolean FUNC11( int realTime ) {
	char	*cmd;

	uis.frametime = realTime - uis.realtime;
	uis.realtime = realTime;

	cmd = FUNC2( 0 );

	// ensure minimum menu data is available
	FUNC0();

	if ( FUNC1 (cmd, "levelselect") == 0 ) {
		FUNC6();
		return qtrue;
	}

	if ( FUNC1 (cmd, "postgame") == 0 ) {
		FUNC7();
		return qtrue;
	}

	if ( FUNC1 (cmd, "ui_cache") == 0 ) {
		FUNC4();
		return qtrue;
	}

	if ( FUNC1 (cmd, "ui_cinematics") == 0 ) {
		FUNC5();
		return qtrue;
	}

	if ( FUNC1 (cmd, "ui_teamOrders") == 0 ) {
		FUNC10();
		return qtrue;
	}

	if ( FUNC1 (cmd, "iamacheater") == 0 ) {
		FUNC9();
		return qtrue;
	}

	if ( FUNC1 (cmd, "iamamonkey") == 0 ) {
		FUNC8();
		return qtrue;
	}

	if ( FUNC1 (cmd, "ui_cdkey") == 0 ) {
		FUNC3();
		return qtrue;
	}

	return qfalse;
}