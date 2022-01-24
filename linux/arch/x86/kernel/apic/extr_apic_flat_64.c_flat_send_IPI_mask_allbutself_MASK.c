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
struct cpumask {int dummy; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 unsigned long* FUNC2 (struct cpumask const*) ; 
 int FUNC3 () ; 

__attribute__((used)) static void
FUNC4(const struct cpumask *cpumask, int vector)
{
	unsigned long mask = FUNC2(cpumask)[0];
	int cpu = FUNC3();

	if (cpu < BITS_PER_LONG)
		FUNC0(cpu, &mask);

	FUNC1(mask, vector);
}