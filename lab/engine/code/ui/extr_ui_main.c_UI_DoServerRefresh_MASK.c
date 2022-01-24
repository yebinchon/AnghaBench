#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int qboolean ;
struct TYPE_5__ {scalar_t__ realTime; } ;
struct TYPE_6__ {scalar_t__ refreshtime; int /*<<< orphan*/  refreshActive; } ;
struct TYPE_8__ {TYPE_1__ uiDC; TYPE_2__ serverStatus; } ;
struct TYPE_7__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_GLOBAL ; 
 int /*<<< orphan*/  AS_LOCAL ; 
 int /*<<< orphan*/  EXEC_NOW ; 
 scalar_t__ UIAS_FAVORITES ; 
 scalar_t__ UIAS_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__ uiInfo ; 
 TYPE_3__ ui_netSource ; 

__attribute__((used)) static void FUNC6( void )
{
	qboolean wait = qfalse;

	if (!uiInfo.serverStatus.refreshActive) {
		return;
	}
	if (ui_netSource.integer != UIAS_FAVORITES) {
		if (ui_netSource.integer == UIAS_LOCAL) {
			if (!FUNC4(AS_LOCAL)) {
				wait = qtrue;
			}
		} else {
			if (FUNC4(AS_GLOBAL) < 0) {
				wait = qtrue;
			}
		}
	}

	if (uiInfo.uiDC.realTime < uiInfo.serverStatus.refreshtime) {
		if (wait) {
			return;
		}
	}

	// if still trying to retrieve pings
	if (FUNC5(FUNC1())) {
		uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime + 1000;
	} else if (!wait) {
		// get the last servers in the list
		FUNC0(2);
		// stop the refresh
		FUNC2();
	} else if ( ui_netSource.integer == UIAS_LOCAL ) {
		// no local servers found, check again
		FUNC3( EXEC_NOW, "localservers\n" );
		uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime + 5000;
	}
	//
	FUNC0(qfalse);
}