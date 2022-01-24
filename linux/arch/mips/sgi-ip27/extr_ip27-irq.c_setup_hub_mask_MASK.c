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
struct hub_irq_data {int cpu; void** irq_mask; } ;
struct cpumask {int dummy; } ;
typedef  int /*<<< orphan*/  nasid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PI_INT_MASK0_A ; 
 int /*<<< orphan*/  PI_INT_MASK0_B ; 
 int /*<<< orphan*/  PI_INT_MASK1_A ; 
 int /*<<< orphan*/  PI_INT_MASK1_B ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct cpumask const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct hub_irq_data *hd, const struct cpumask *mask)
{
	nasid_t nasid;
	int cpu;

	cpu = FUNC3(mask, cpu_online_mask);
	nasid = FUNC0(FUNC2(cpu));
	hd->cpu = cpu;
	if (!FUNC4(cpu)) {
		hd->irq_mask[0] = FUNC1(nasid, PI_INT_MASK0_A);
		hd->irq_mask[1] = FUNC1(nasid, PI_INT_MASK1_A);
	} else {
		hd->irq_mask[0] = FUNC1(nasid, PI_INT_MASK0_B);
		hd->irq_mask[1] = FUNC1(nasid, PI_INT_MASK1_B);
	}
}