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
typedef  int /*<<< orphan*/  masterstr ;
typedef  int /*<<< orphan*/  cvarname ;
struct TYPE_2__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,scalar_t__) ; 
 scalar_t__ UIAS_GLOBAL0 ; 
 scalar_t__ UIAS_GLOBAL1 ; 
 scalar_t__ UIAS_GLOBAL5 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ numNetSources ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 TYPE_1__ ui_netSource ; 

__attribute__((used)) static qboolean FUNC6(int flags, float *special, int key) {
	int select = FUNC2(key);
	if (select != 0) {
		ui_netSource.integer += select;

		if(ui_netSource.integer >= UIAS_GLOBAL1 && ui_netSource.integer <= UIAS_GLOBAL5)
		{
			char masterstr[2], cvarname[sizeof("sv_master1")];
		
			while(ui_netSource.integer >= UIAS_GLOBAL1 && ui_netSource.integer <= UIAS_GLOBAL5)
			{
				FUNC0(cvarname, sizeof(cvarname), "sv_master%d", ui_netSource.integer - UIAS_GLOBAL0);
				FUNC5(cvarname, masterstr, sizeof(masterstr));
				if(*masterstr)
					break;

				ui_netSource.integer += select;
			}
		}

		if (ui_netSource.integer >= numNetSources) {
			ui_netSource.integer = 0;
		} else if (ui_netSource.integer < 0) {
			ui_netSource.integer = numNetSources - 1;
		}

		FUNC1(qtrue);
		FUNC3(qtrue, qfalse);
		FUNC4( "ui_netSource", ui_netSource.integer);
		return qtrue;
	}
	return qfalse;
}