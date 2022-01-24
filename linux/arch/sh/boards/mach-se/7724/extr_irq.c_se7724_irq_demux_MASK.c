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
struct irq_desc {int dummy; } ;
struct fpga_irq {unsigned int base; unsigned short mask; int /*<<< orphan*/  sraddr; } ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 struct fpga_irq FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct irq_desc*) ; 

__attribute__((used)) static void FUNC4(struct irq_desc *desc)
{
	unsigned int irq = FUNC3(desc);
	struct fpga_irq set = FUNC2(irq);
	unsigned short intv = FUNC0(set.sraddr);
	unsigned int ext_irq = set.base;

	intv &= set.mask;

	for (; intv; intv >>= 1, ext_irq++) {
		if (!(intv & 1))
			continue;

		FUNC1(ext_irq);
	}
}