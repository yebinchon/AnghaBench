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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct iommu_map_table {scalar_t__ table_map_base; } ;
struct iommu {TYPE_2__* atu; struct iommu_map_table tbl; } ;
struct TYPE_3__ {int numa_node; struct iommu* iommu; } ;
struct device {int /*<<< orphan*/  coherent_dma_mask; TYPE_1__ archdata; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {struct iommu_map_table tbl; } ;

/* Variables and functions */
 unsigned long DMA_ATTR_WEAK_ORDERING ; 
 unsigned long HV_PCI_MAP_ATTR_READ ; 
 unsigned long HV_PCI_MAP_ATTR_RELAXED_ORDER ; 
 unsigned long HV_PCI_MAP_ATTR_WRITE ; 
 long IOMMU_ERROR_CODE ; 
 size_t FUNC0 (size_t) ; 
 size_t IO_PAGE_SHIFT ; 
 unsigned long MAX_ORDER ; 
 unsigned long PAGE_SIZE ; 
 unsigned long FUNC1 (unsigned long) ; 
 struct page* FUNC2 (int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 unsigned long FUNC4 (size_t) ; 
 long FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,unsigned long,long) ; 
 long FUNC8 (struct device*,struct iommu_map_table*,unsigned long,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iommu_map_table*,scalar_t__,unsigned long,long) ; 
 int /*<<< orphan*/  FUNC10 (struct iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static void *FUNC16(struct device *dev, size_t size,
				   dma_addr_t *dma_addrp, gfp_t gfp,
				   unsigned long attrs)
{
	u64 mask;
	unsigned long flags, order, first_page, npages, n;
	unsigned long prot = 0;
	struct iommu *iommu;
	struct iommu_map_table *tbl;
	struct page *page;
	void *ret;
	long entry;
	int nid;

	size = FUNC0(size);
	order = FUNC4(size);
	if (FUNC15(order >= MAX_ORDER))
		return NULL;

	npages = size >> IO_PAGE_SHIFT;

	if (attrs & DMA_ATTR_WEAK_ORDERING)
		prot = HV_PCI_MAP_ATTR_RELAXED_ORDER;

	nid = dev->archdata.numa_node;
	page = FUNC2(nid, gfp, order);
	if (FUNC15(!page))
		return NULL;

	first_page = (unsigned long) FUNC14(page);
	FUNC13((char *)first_page, 0, PAGE_SIZE << order);

	iommu = dev->archdata.iommu;
	mask = dev->coherent_dma_mask;
	if (!FUNC10(iommu, mask))
		tbl = &iommu->tbl;
	else
		tbl = &iommu->atu->tbl;

	entry = FUNC8(dev, tbl, npages, NULL,
				      (unsigned long)(-1), 0);

	if (FUNC15(entry == IOMMU_ERROR_CODE))
		goto range_alloc_fail;

	*dma_addrp = (tbl->table_map_base + (entry << IO_PAGE_SHIFT));
	ret = (void *) first_page;
	first_page = FUNC1(first_page);

	FUNC12(flags);

	FUNC7(dev,
			  (HV_PCI_MAP_ATTR_READ | prot |
			   HV_PCI_MAP_ATTR_WRITE),
			  entry);

	for (n = 0; n < npages; n++) {
		long err = FUNC5(first_page + (n * PAGE_SIZE), mask);
		if (FUNC15(err < 0L))
			goto iommu_map_fail;
	}

	if (FUNC15(FUNC6(mask) < 0L))
		goto iommu_map_fail;

	FUNC11(flags);

	return ret;

iommu_map_fail:
	FUNC11(flags);
	FUNC9(tbl, *dma_addrp, npages, IOMMU_ERROR_CODE);

range_alloc_fail:
	FUNC3(first_page, order);
	return NULL;
}