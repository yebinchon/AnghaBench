#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {scalar_t__ strbuf_enabled; } ;
struct TYPE_4__ {unsigned long table_map_base; } ;
struct iommu {TYPE_2__ tbl; int /*<<< orphan*/  lock; scalar_t__ iommu_ctxflush; int /*<<< orphan*/ * page_table; } ;
struct TYPE_3__ {struct strbuf* stc; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef  int /*<<< orphan*/  iopte_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 unsigned long DMA_ATTR_SKIP_CPU_SYNC ; 
 int DMA_NONE ; 
 int /*<<< orphan*/  IOMMU_ERROR_CODE ; 
 unsigned long IOPTE_CONTEXT ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long IO_PAGE_MASK ; 
 unsigned long IO_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,struct iommu*,unsigned long,unsigned long,unsigned long,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct device *dev, dma_addr_t bus_addr,
			      size_t sz, enum dma_data_direction direction,
			      unsigned long attrs)
{
	struct iommu *iommu;
	struct strbuf *strbuf;
	iopte_t *base;
	unsigned long flags, npages, ctx, i;

	if (FUNC10(direction == DMA_NONE)) {
		if (FUNC6())
			FUNC1(1);
		return;
	}

	iommu = dev->archdata.iommu;
	strbuf = dev->archdata.stc;

	npages = FUNC0(bus_addr + sz) - (bus_addr & IO_PAGE_MASK);
	npages >>= IO_PAGE_SHIFT;
	base = iommu->page_table +
		((bus_addr - iommu->tbl.table_map_base) >> IO_PAGE_SHIFT);
	bus_addr &= IO_PAGE_MASK;

	FUNC7(&iommu->lock, flags);

	/* Record the context, if any. */
	ctx = 0;
	if (iommu->iommu_ctxflush)
		ctx = (FUNC5(*base) & IOPTE_CONTEXT) >> 47UL;

	/* Step 1: Kick data out of streaming buffers if necessary. */
	if (strbuf->strbuf_enabled && !(attrs & DMA_ATTR_SKIP_CPU_SYNC))
		FUNC9(strbuf, iommu, bus_addr, ctx,
			     npages, direction);

	/* Step 2: Clear out TSB entries. */
	for (i = 0; i < npages; i++)
		FUNC4(iommu, base + i);

	FUNC2(iommu, ctx);
	FUNC8(&iommu->lock, flags);

	FUNC3(&iommu->tbl, bus_addr, npages, IOMMU_ERROR_CODE);
}