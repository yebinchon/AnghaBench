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
struct ebus_dma_info {int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ EBDMA_CSR ; 
 int EBDMA_CSR_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ebus_dma_info*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

void FUNC5(struct ebus_dma_info *p)
{
	unsigned long flags;
	u32 csr;
	int irq_on = 0;

	FUNC2(&p->lock, flags);
	csr = FUNC1(p->regs + EBDMA_CSR);
	if (csr & EBDMA_CSR_INT_EN) {
		csr &= ~EBDMA_CSR_INT_EN;
		FUNC4(csr, p->regs + EBDMA_CSR);
		irq_on = 1;
	}
	FUNC3(&p->lock, flags);

	if (irq_on)
		FUNC0(p->irq, p);
}