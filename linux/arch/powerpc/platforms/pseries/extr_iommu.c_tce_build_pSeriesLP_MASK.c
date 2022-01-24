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
typedef  int u64 ;
struct iommu_table {scalar_t__ it_index; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int DMA_TO_DEVICE ; 
 int H_NOT_ENOUGH_RESOURCES ; 
 int TCE_PCI_READ ; 
 int TCE_PCI_WRITE ; 
 int TCE_RPN_MASK ; 
 int TCE_RPN_SHIFT ; 
 int TCE_SHIFT ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_table*,long,long) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct iommu_table *tbl, long tcenum,
				long npages, unsigned long uaddr,
				enum dma_data_direction direction,
				unsigned long attrs)
{
	u64 rc = 0;
	u64 proto_tce, tce;
	u64 rpn;
	int ret = 0;
	long tcenum_start = tcenum, npages_start = npages;

	rpn = FUNC0(uaddr) >> TCE_SHIFT;
	proto_tce = TCE_PCI_READ;
	if (direction != DMA_TO_DEVICE)
		proto_tce |= TCE_PCI_WRITE;

	while (npages--) {
		tce = proto_tce | (rpn & TCE_RPN_MASK) << TCE_RPN_SHIFT;
		rc = FUNC2((u64)tbl->it_index, (u64)tcenum << 12, tce);

		if (FUNC6(rc == H_NOT_ENOUGH_RESOURCES)) {
			ret = (int)rc;
			FUNC5(tbl, tcenum_start,
			                   (npages_start - (npages + 1)));
			break;
		}

		if (rc && FUNC4()) {
			FUNC3("tce_build_pSeriesLP: plpar_tce_put failed. rc=%lld\n", rc);
			FUNC3("\tindex   = 0x%llx\n", (u64)tbl->it_index);
			FUNC3("\ttcenum  = 0x%llx\n", (u64)tcenum);
			FUNC3("\ttce val = 0x%llx\n", tce );
			FUNC1();
		}

		tcenum++;
		rpn++;
	}
	return ret;
}