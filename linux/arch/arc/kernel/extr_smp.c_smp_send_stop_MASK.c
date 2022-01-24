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
 int /*<<< orphan*/  IPI_CPU_STOP ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpumask*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	struct cpumask targets;
	FUNC1(&targets, cpu_online_mask);
	FUNC0(FUNC3(), &targets);
	FUNC2(&targets, IPI_CPU_STOP);
}