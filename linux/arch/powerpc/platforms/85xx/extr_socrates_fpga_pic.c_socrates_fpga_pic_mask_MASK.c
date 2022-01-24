#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int irq_line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SOCRATES_FPGA_IRQ_MASK ; 
 TYPE_1__* fpga_irqs ; 
 unsigned int FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  socrates_fpga_pic_lock ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	unsigned long flags;
	unsigned int hwirq = FUNC1(d);
	int irq_line;
	u32 mask;

	irq_line = fpga_irqs[hwirq].irq_line;
	FUNC2(&socrates_fpga_pic_lock, flags);
	mask = FUNC4(FUNC0(irq_line))
		& SOCRATES_FPGA_IRQ_MASK;
	mask &= ~(1 << hwirq);
	FUNC5(FUNC0(irq_line), mask);
	FUNC3(&socrates_fpga_pic_lock, flags);
}