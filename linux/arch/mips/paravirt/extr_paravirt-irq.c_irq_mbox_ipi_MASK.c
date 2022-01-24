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
typedef  unsigned int u32 ;

/* Variables and functions */
 int MBOX_BITS_PER_CPU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 unsigned int FUNC2 (int) ; 
 scalar_t__ mips_irq_chip ; 
 scalar_t__ mips_irq_chip_reg_raw_w1s ; 

void FUNC3(int cpu, unsigned int actions)
{
	unsigned int cpuid = FUNC2(cpu);
	u32 mask;

	FUNC0(actions >= (1 << MBOX_BITS_PER_CPU));

	mask = actions << (cpuid * MBOX_BITS_PER_CPU);
	FUNC1(mask, mips_irq_chip + mips_irq_chip_reg_raw_w1s + sizeof(u32));
}