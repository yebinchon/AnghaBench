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
struct TYPE_2__ {int rmid; } ;
struct rdtgroup {TYPE_1__ mon; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rdtgroup*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ rdt_mon_capable ; 
 int FUNC4 (struct rdtgroup*) ; 

int FUNC5(struct rdtgroup *rdtgrp)
{
	int ret;

	if (rdt_mon_capable) {
		ret = FUNC0();
		if (ret < 0) {
			FUNC3("Out of RMIDs\n");
			return ret;
		}
		rdtgrp->mon.rmid = ret;
	}

	ret = FUNC4(rdtgrp);
	if (ret) {
		FUNC1(rdtgrp->mon.rmid);
		return ret;
	}

	FUNC2(rdtgrp);
	return 0;
}