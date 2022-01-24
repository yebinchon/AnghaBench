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
struct TYPE_2__ {int /*<<< orphan*/ * pev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NMI_LOCAL ; 
 int /*<<< orphan*/  NMI_UNKNOWN ; 
 TYPE_1__* breakinfo ; 
 int /*<<< orphan*/  kgdb_notifier ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	int i;
	for (i = 0; i < 4; i++) {
		if (breakinfo[i].pev) {
			FUNC2(breakinfo[i].pev);
			breakinfo[i].pev = NULL;
		}
	}
	FUNC1(NMI_UNKNOWN, "kgdb");
	FUNC1(NMI_LOCAL, "kgdb");
	FUNC0(&kgdb_notifier);
}