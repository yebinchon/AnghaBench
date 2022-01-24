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
 int /*<<< orphan*/  H_INT_SET_QUEUE_CONFIG ; 
 scalar_t__ FUNC0 (long) ; 
 long FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long,unsigned long,long) ; 

__attribute__((used)) static long FUNC4(unsigned long flags,
				       unsigned long target,
				       unsigned long priority,
				       unsigned long qpage,
				       unsigned long qsize)
{
	long rc;

	FUNC2("H_INT_SET_QUEUE_CONFIG flags=%lx target=%lx priority=%lx qpage=%lx qsize=%lx\n",
		flags,  target, priority, qpage, qsize);

	do {
		rc = FUNC1(H_INT_SET_QUEUE_CONFIG, flags, target,
					priority, qpage, qsize);
	} while (FUNC0(rc));

	if (rc) {
		FUNC3("H_INT_SET_QUEUE_CONFIG cpu=%ld prio=%ld qpage=%lx returned %ld\n",
		       target, priority, qpage, rc);
		return  rc;
	}

	return 0;
}