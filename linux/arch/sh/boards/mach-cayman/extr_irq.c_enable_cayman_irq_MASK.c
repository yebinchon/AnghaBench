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
struct irq_data {unsigned int irq; } ;

/* Variables and functions */
 unsigned int EPLD_MASK_BASE ; 
 scalar_t__ START_EXT_IRQS ; 
 unsigned long FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	unsigned int irq = data->irq;
	unsigned long flags;
	unsigned long mask;
	unsigned int reg;
	unsigned char bit;

	irq -= START_EXT_IRQS;
	reg = EPLD_MASK_BASE + ((irq / 8) << 2);
	bit = 1<<(irq % 8);
	FUNC3(flags);
	mask = FUNC0(reg);
	mask |= bit;
	FUNC1(mask, reg);
	FUNC2(flags);
}