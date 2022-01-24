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
struct TYPE_2__ {int /*<<< orphan*/  uiStarted; } ;

/* Variables and functions */
 int KEYCATCH_UI ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  UI_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ cls ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/ * uivm ; 

void FUNC4( void ) {
	FUNC1( FUNC0( ) & ~KEYCATCH_UI );
	cls.uiStarted = qfalse;
	if ( !uivm ) {
		return;
	}
	FUNC2( uivm, UI_SHUTDOWN );
	FUNC3( uivm );
	uivm = NULL;
}