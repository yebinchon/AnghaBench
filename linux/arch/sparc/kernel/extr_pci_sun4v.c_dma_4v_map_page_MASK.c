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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct iommu_map_table {unsigned long table_map_base; } ;
struct iommu {struct iommu_map_table tbl; struct atu* atu; } ;
struct TYPE_2__ {struct iommu* iommu; } ;
struct device {int /*<<< orphan*/ * dma_mask; TYPE_1__ archdata; } ;
struct atu {struct iommu_map_table tbl; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 unsigned long DMA_ATTR_WEAK_ORDERING ; 
 unsigned long DMA_MAPPING_ERROR ; 
 int DMA_NONE ; 
 int DMA_TO_DEVICE ; 
 unsigned long HV_PCI_MAP_ATTR_READ ; 
 unsigned long HV_PCI_MAP_ATTR_RELAXED_ORDER ; 
 unsigned long HV_PCI_MAP_ATTR_WRITE ; 
 long IOMMU_ERROR_CODE ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long IO_PAGE_MASK ; 
 unsigned long IO_PAGE_SHIFT ; 
 scalar_t__ IO_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (unsigned long) ; 
 long FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,unsigned long,long) ; 
 long FUNC6 (struct device*,struct iommu_map_table*,unsigned long,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iommu_map_table*,unsigned long,unsigned long,long) ; 
 int /*<<< orphan*/  FUNC8 (struct iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static dma_addr_t FUNC14(struct device *dev, struct page *page,
				  unsigned long offset, size_t sz,
				  enum dma_data_direction direction,
				  unsigned long attrs)
{
	struct iommu *iommu;
	struct atu *atu;
	struct iommu_map_table *tbl;
	u64 mask;
	unsigned long flags, npages, oaddr;
	unsigned long i, base_paddr;
	unsigned long prot;
	dma_addr_t bus_addr, ret;
	long entry;

	iommu = dev->archdata.iommu;
	atu = iommu->atu;

	if (FUNC13(direction == DMA_NONE))
		goto bad;

	oaddr = (unsigned long)(FUNC11(page) + offset);
	npages = FUNC0(oaddr + sz) - (oaddr & IO_PAGE_MASK);
	npages >>= IO_PAGE_SHIFT;

	mask = *dev->dma_mask;
	if (!FUNC8(iommu, mask))
		tbl = &iommu->tbl;
	else
		tbl = &atu->tbl;

	entry = FUNC6(dev, tbl, npages, NULL,
				      (unsigned long)(-1), 0);

	if (FUNC13(entry == IOMMU_ERROR_CODE))
		goto bad;

	bus_addr = (tbl->table_map_base + (entry << IO_PAGE_SHIFT));
	ret = bus_addr | (oaddr & ~IO_PAGE_MASK);
	base_paddr = FUNC2(oaddr & IO_PAGE_MASK);
	prot = HV_PCI_MAP_ATTR_READ;
	if (direction != DMA_TO_DEVICE)
		prot |= HV_PCI_MAP_ATTR_WRITE;

	if (attrs & DMA_ATTR_WEAK_ORDERING)
		prot |= HV_PCI_MAP_ATTR_RELAXED_ORDER;

	FUNC10(flags);

	FUNC5(dev, prot, entry);

	for (i = 0; i < npages; i++, base_paddr += IO_PAGE_SIZE) {
		long err = FUNC3(base_paddr, mask);
		if (FUNC13(err < 0L))
			goto iommu_map_fail;
	}
	if (FUNC13(FUNC4(mask) < 0L))
		goto iommu_map_fail;

	FUNC9(flags);

	return ret;

bad:
	if (FUNC12())
		FUNC1(1);
	return DMA_MAPPING_ERROR;

iommu_map_fail:
	FUNC9(flags);
	FUNC7(tbl, bus_addr, npages, IOMMU_ERROR_CODE);
	return DMA_MAPPING_ERROR;
}