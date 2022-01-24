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
struct cpufreq_policy {unsigned int cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long SAFARI_CFG_DIV_1 ; 
 unsigned long SAFARI_CFG_DIV_2 ; 
 unsigned long SAFARI_CFG_DIV_32 ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ,unsigned long*,int) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  update_safari_cfg ; 

__attribute__((used)) static int FUNC3(struct cpufreq_policy *policy, unsigned int index)
{
	unsigned int cpu = policy->cpu;
	unsigned long new_bits, new_freq;

	new_freq = FUNC2(cpu) / 1000;
	switch (index) {
	case 0:
		new_bits = SAFARI_CFG_DIV_1;
		new_freq /= 1;
		break;
	case 1:
		new_bits = SAFARI_CFG_DIV_2;
		new_freq /= 2;
		break;
	case 2:
		new_bits = SAFARI_CFG_DIV_32;
		new_freq /= 32;
		break;

	default:
		FUNC0();
	}

	return FUNC1(cpu, update_safari_cfg, &new_bits, 1);
}