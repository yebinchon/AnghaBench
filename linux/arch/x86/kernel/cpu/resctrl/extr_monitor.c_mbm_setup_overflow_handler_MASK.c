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
struct rdt_domain {int mbm_work_cpu; int /*<<< orphan*/  mbm_over; int /*<<< orphan*/  cpu_mask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  rdt_enable_key ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rdt_domain *dom, unsigned long delay_ms)
{
	unsigned long delay = FUNC1(delay_ms);
	int cpu;

	if (!FUNC3(&rdt_enable_key))
		return;
	cpu = FUNC0(&dom->cpu_mask);
	dom->mbm_work_cpu = cpu;
	FUNC2(cpu, &dom->mbm_over, delay);
}