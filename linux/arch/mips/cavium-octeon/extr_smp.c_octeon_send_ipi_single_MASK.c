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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

void FUNC3(int cpu, unsigned int action)
{
	int coreid = FUNC1(cpu);
	/*
	pr_info("SMP: Mailbox send cpu=%d, coreid=%d, action=%u\n", cpu,
	       coreid, action);
	*/
	FUNC2(FUNC0(coreid), action);
}