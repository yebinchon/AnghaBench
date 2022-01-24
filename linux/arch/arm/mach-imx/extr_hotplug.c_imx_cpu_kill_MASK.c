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
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

int FUNC5(unsigned int cpu)
{
	unsigned long timeout = jiffies + FUNC3(50);

	while (FUNC1(cpu) == 0)
		if (FUNC4(jiffies, timeout))
			return 0;
	FUNC0(cpu, false);
	FUNC2(cpu, 0);
	return 1;
}