#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  H_INT_SET_SOURCE_CONFIG ; 
 scalar_t__ FUNC0 (long) ; 
 long FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long,unsigned long,long) ; 

__attribute__((used)) static long FUNC4(unsigned long flags,
					unsigned long lisn,
					unsigned long target,
					unsigned long prio,
					unsigned long sw_irq)
{
	long rc;


	FUNC2("H_INT_SET_SOURCE_CONFIG flags=%lx lisn=%lx target=%lx prio=%lx sw_irq=%lx\n",
		flags, lisn, target, prio, sw_irq);


	do {
		rc = FUNC1(H_INT_SET_SOURCE_CONFIG, flags, lisn,
					target, prio, sw_irq);
	} while (FUNC0(rc));

	if (rc) {
		FUNC3("H_INT_SET_SOURCE_CONFIG lisn=%ld target=%lx prio=%lx failed %ld\n",
		       lisn, target, prio, rc);
		return rc;
	}

	return 0;
}