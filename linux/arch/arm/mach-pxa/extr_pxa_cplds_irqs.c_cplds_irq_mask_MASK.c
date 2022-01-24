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
struct irq_data {int dummy; } ;
struct cplds {unsigned int irq_mask; scalar_t__ base; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FPGA_IRQ_MASK_EN ; 
 struct cplds* FUNC1 (struct irq_data*) ; 
 unsigned int FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct cplds *fpga = FUNC1(d);
	unsigned int cplds_irq = FUNC2(d);
	unsigned int bit = FUNC0(cplds_irq);

	fpga->irq_mask &= ~bit;
	FUNC3(fpga->irq_mask, fpga->base + FPGA_IRQ_MASK_EN);
}