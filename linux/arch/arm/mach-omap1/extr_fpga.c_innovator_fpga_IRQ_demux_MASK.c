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
typedef  int u32 ;
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int OMAP_FPGA_IRQ_BASE ; 
 int OMAP_FPGA_IRQ_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct irq_desc *desc)
{
	u32 stat;
	int fpga_irq;

	stat = FUNC1();

	if (!stat)
		return;

	for (fpga_irq = OMAP_FPGA_IRQ_BASE;
	     (fpga_irq < OMAP_FPGA_IRQ_END) && stat;
	     fpga_irq++, stat >>= 1) {
		if (stat & 1) {
			FUNC0(fpga_irq);
		}
	}
}