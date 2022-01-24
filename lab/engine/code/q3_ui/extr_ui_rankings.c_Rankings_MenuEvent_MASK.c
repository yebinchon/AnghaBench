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
struct TYPE_2__ {int id; } ;
typedef  TYPE_1__ menucommon_s ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_APPEND ; 
#define  ID_CREATE 133 
#define  ID_LEAVE 132 
#define  ID_LOGIN 131 
#define  ID_LOGOUT 130 
#define  ID_SETUP 129 
#define  ID_SPECTATE 128 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6( void* ptr, int event ) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	switch( ((menucommon_s*)ptr)->id ) {
	case ID_LOGIN:
		FUNC1();
		break;

	case ID_LOGOUT:
		// server side masqueraded player logout first
		FUNC4();
		FUNC0();
		break;
		
	case ID_CREATE:
		FUNC3();
		break;

	case ID_SPECTATE:
		FUNC5( EXEC_APPEND, "cmd rank_spectate\n" );
		FUNC0();
		break;

	case ID_SETUP:
		FUNC2();
		break;
		
	case ID_LEAVE:
		FUNC5( EXEC_APPEND, "disconnect\n" );
		FUNC0();
		break;

	}
}