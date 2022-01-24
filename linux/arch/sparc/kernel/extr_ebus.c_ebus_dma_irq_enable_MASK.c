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
typedef  int /*<<< orphan*/  u32 ;
struct ebus_dma_info {int flags; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; scalar_t__ regs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ EBDMA_CSR ; 
 int /*<<< orphan*/  EBDMA_CSR_INT_EN ; 
 int EBUSY ; 
 int EBUS_DMA_FLAG_USE_EBDMA_HANDLER ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  ebus_dma_irq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ebus_dma_info*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ebus_dma_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(struct ebus_dma_info *p, int on)
{
	unsigned long flags;
	u32 csr;

	if (on) {
		if (p->flags & EBUS_DMA_FLAG_USE_EBDMA_HANDLER) {
			if (FUNC2(p->irq, ebus_dma_irq, IRQF_SHARED, p->name, p))
				return -EBUSY;
		}

		FUNC3(&p->lock, flags);
		csr = FUNC1(p->regs + EBDMA_CSR);
		csr |= EBDMA_CSR_INT_EN;
		FUNC5(csr, p->regs + EBDMA_CSR);
		FUNC4(&p->lock, flags);
	} else {
		FUNC3(&p->lock, flags);
		csr = FUNC1(p->regs + EBDMA_CSR);
		csr &= ~EBDMA_CSR_INT_EN;
		FUNC5(csr, p->regs + EBDMA_CSR);
		FUNC4(&p->lock, flags);

		if (p->flags & EBUS_DMA_FLAG_USE_EBDMA_HANDLER) {
			FUNC0(p->irq, p);
		}
	}

	return 0;
}