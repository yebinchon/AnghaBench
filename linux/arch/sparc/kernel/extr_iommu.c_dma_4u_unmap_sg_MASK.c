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
struct scatterlist {unsigned int dma_length; int /*<<< orphan*/  dma_address; } ;
struct TYPE_4__ {unsigned long table_map_base; } ;
struct iommu {int /*<<< orphan*/  lock; TYPE_2__ tbl; int /*<<< orphan*/ * page_table; } ;
struct TYPE_3__ {struct strbuf* stc; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef  int /*<<< orphan*/  iopte_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long DMA_ATTR_SKIP_CPU_SYNC ; 
 int DMA_NONE ; 
 int /*<<< orphan*/  IOMMU_ERROR_CODE ; 
 int /*<<< orphan*/  IO_PAGE_MASK ; 
 unsigned long IO_PAGE_SHIFT ; 
 int /*<<< orphan*/  IO_PAGE_SIZE ; 
 unsigned long FUNC1 (struct iommu*,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu*,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu*,int /*<<< orphan*/ *) ; 
 struct scatterlist* FUNC6 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,struct iommu*,int /*<<< orphan*/ ,unsigned long,unsigned long,int) ; 

__attribute__((used)) static void FUNC10(struct device *dev, struct scatterlist *sglist,
			    int nelems, enum dma_data_direction direction,
			    unsigned long attrs)
{
	unsigned long flags, ctx;
	struct scatterlist *sg;
	struct strbuf *strbuf;
	struct iommu *iommu;

	FUNC0(direction == DMA_NONE);

	iommu = dev->archdata.iommu;
	strbuf = dev->archdata.stc;

	ctx = FUNC1(iommu, sglist);

	FUNC7(&iommu->lock, flags);

	sg = sglist;
	while (nelems--) {
		dma_addr_t dma_handle = sg->dma_address;
		unsigned int len = sg->dma_length;
		unsigned long npages, entry;
		iopte_t *base;
		int i;

		if (!len)
			break;
		npages = FUNC3(dma_handle, len, IO_PAGE_SIZE);

		entry = ((dma_handle - iommu->tbl.table_map_base)
			 >> IO_PAGE_SHIFT);
		base = iommu->page_table + entry;

		dma_handle &= IO_PAGE_MASK;
		if (strbuf->strbuf_enabled && !(attrs & DMA_ATTR_SKIP_CPU_SYNC))
			FUNC9(strbuf, iommu, dma_handle, ctx,
				     npages, direction);

		for (i = 0; i < npages; i++)
			FUNC5(iommu, base + i);

		FUNC4(&iommu->tbl, dma_handle, npages,
				     IOMMU_ERROR_CODE);
		sg = FUNC6(sg);
	}

	FUNC2(iommu, ctx);

	FUNC8(&iommu->lock, flags);
}