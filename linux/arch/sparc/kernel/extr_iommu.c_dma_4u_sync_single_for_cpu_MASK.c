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
struct strbuf {scalar_t__ strbuf_ctxflush; int /*<<< orphan*/  strbuf_enabled; } ;
struct iommu_map_table {unsigned long table_map_base; } ;
struct iommu {int /*<<< orphan*/  lock; int /*<<< orphan*/ * page_table; struct iommu_map_table tbl; scalar_t__ iommu_ctxflush; } ;
struct TYPE_2__ {struct strbuf* stc; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef  int /*<<< orphan*/  iopte_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 unsigned long IOPTE_CONTEXT ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long IO_PAGE_MASK ; 
 unsigned long IO_PAGE_SHIFT ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,struct iommu*,unsigned long,unsigned long,unsigned long,int) ; 

__attribute__((used)) static void FUNC5(struct device *dev,
				       dma_addr_t bus_addr, size_t sz,
				       enum dma_data_direction direction)
{
	struct iommu *iommu;
	struct strbuf *strbuf;
	unsigned long flags, ctx, npages;

	iommu = dev->archdata.iommu;
	strbuf = dev->archdata.stc;

	if (!strbuf->strbuf_enabled)
		return;

	FUNC2(&iommu->lock, flags);

	npages = FUNC0(bus_addr + sz) - (bus_addr & IO_PAGE_MASK);
	npages >>= IO_PAGE_SHIFT;
	bus_addr &= IO_PAGE_MASK;

	/* Step 1: Record the context, if any. */
	ctx = 0;
	if (iommu->iommu_ctxflush &&
	    strbuf->strbuf_ctxflush) {
		iopte_t *iopte;
		struct iommu_map_table *tbl = &iommu->tbl;

		iopte = iommu->page_table +
			((bus_addr - tbl->table_map_base)>>IO_PAGE_SHIFT);
		ctx = (FUNC1(*iopte) & IOPTE_CONTEXT) >> 47UL;
	}

	/* Step 2: Kick data out of streaming buffers. */
	FUNC4(strbuf, iommu, bus_addr, ctx, npages, direction);

	FUNC3(&iommu->lock, flags);
}