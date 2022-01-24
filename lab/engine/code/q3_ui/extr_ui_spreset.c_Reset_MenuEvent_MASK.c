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
struct TYPE_2__ {scalar_t__ id; } ;
typedef  TYPE_1__ menucommon_s ;

/* Variables and functions */
 scalar_t__ ID_NO ; 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void FUNC4(void* ptr, int event) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	FUNC1();

	if( ((menucommon_s*)ptr)->id == ID_NO ) {
		return;
	}

	// reset the game, pop the level menu and restart it so it updates
	FUNC0();
	FUNC3( "ui_spSelection", 0 );
	FUNC1();
	FUNC2();
}