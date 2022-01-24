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
struct ebus_dma_info {int /*<<< orphan*/  lock; scalar_t__ regs; } ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 scalar_t__ EBDMA_ADDR ; 
 scalar_t__ EBDMA_COUNT ; 
 scalar_t__ EBDMA_CSR ; 
 int EBDMA_CSR_EN_DMA ; 
 int EBDMA_CSR_NA_LOADED ; 
 int EBUSY ; 
 int EINVAL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (size_t,scalar_t__) ; 

int FUNC4(struct ebus_dma_info *p, dma_addr_t bus_addr, size_t len)
{
	unsigned long flags;
	u32 csr;
	int err;

	if (len >= (1 << 24))
		return -EINVAL;

	FUNC1(&p->lock, flags);
	csr = FUNC0(p->regs + EBDMA_CSR);
	err = -EINVAL;
	if (!(csr & EBDMA_CSR_EN_DMA))
		goto out;
	err = -EBUSY;
	if (csr & EBDMA_CSR_NA_LOADED)
		goto out;

	FUNC3(len,      p->regs + EBDMA_COUNT);
	FUNC3(bus_addr, p->regs + EBDMA_ADDR);
	err = 0;

out:
	FUNC2(&p->lock, flags);

	return err;
}