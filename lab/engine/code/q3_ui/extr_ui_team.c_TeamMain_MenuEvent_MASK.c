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
#define  ID_JOINBLUE 131 
#define  ID_JOINGAME 130 
#define  ID_JOINRED 129 
#define  ID_SPECTATE 128 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2( void* ptr, int event ) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	switch( ((menucommon_s*)ptr)->id ) {
	case ID_JOINRED:
		FUNC1( EXEC_APPEND, "cmd team red\n" );
		FUNC0();
		break;

	case ID_JOINBLUE:
		FUNC1( EXEC_APPEND, "cmd team blue\n" );
		FUNC0();
		break;

	case ID_JOINGAME:
		FUNC1( EXEC_APPEND, "cmd team free\n" );
		FUNC0();
		break;

	case ID_SPECTATE:
		FUNC1( EXEC_APPEND, "cmd team spectator\n" );
		FUNC0();
		break;
	}
}