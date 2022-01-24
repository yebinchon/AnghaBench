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
struct pci_pbm_info {int /*<<< orphan*/  devhandle; } ;
struct iommu_pool {unsigned long start; unsigned long end; } ;
struct iommu_map_table {unsigned long nr_pools; int /*<<< orphan*/  map; struct iommu_pool* pools; } ;

/* Variables and functions */
 unsigned long HV_EOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*,unsigned long*) ; 

__attribute__((used)) static unsigned long FUNC5(struct pci_pbm_info *pbm,
					    struct iommu_map_table *iommu)
{
	struct iommu_pool *pool;
	unsigned long i, pool_nr, cnt = 0;
	u32 devhandle;

	devhandle = pbm->devhandle;
	for (pool_nr = 0; pool_nr < iommu->nr_pools; pool_nr++) {
		pool = &(iommu->pools[pool_nr]);
		for (i = pool->start; i <= pool->end; i++) {
			unsigned long ret, io_attrs, ra;

			ret = FUNC4(devhandle,
						     FUNC0(0, i),
						     &io_attrs, &ra);
			if (ret == HV_EOK) {
				if (FUNC2(ra)) {
					FUNC3(devhandle,
							      FUNC0(0,
							      i), 1);
				} else {
					cnt++;
					FUNC1(i, iommu->map);
				}
			}
		}
	}
	return cnt;
}