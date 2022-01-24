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
typedef  int /*<<< orphan*/  u64 ;
struct iommu_batch {scalar_t__ npages; int /*<<< orphan*/ * pglist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PGLIST_NENTS ; 
 int /*<<< orphan*/  iommu_batch ; 
 long FUNC1 (struct iommu_batch*,int /*<<< orphan*/ ) ; 
 struct iommu_batch* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline long FUNC3(u64 phys_page, u64 mask)
{
	struct iommu_batch *p = FUNC2(&iommu_batch);

	FUNC0(p->npages >= PGLIST_NENTS);

	p->pglist[p->npages++] = phys_page;
	if (p->npages == PGLIST_NENTS)
		return FUNC1(p, mask);

	return 0;
}