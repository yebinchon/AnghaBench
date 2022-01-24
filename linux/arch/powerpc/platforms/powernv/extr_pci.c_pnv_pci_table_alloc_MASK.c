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
struct iommu_table {int /*<<< orphan*/  it_kref; int /*<<< orphan*/  it_group_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct iommu_table* FUNC2 (int,int /*<<< orphan*/ ,int) ; 

struct iommu_table *FUNC3(int nid)
{
	struct iommu_table *tbl;

	tbl = FUNC2(sizeof(struct iommu_table), GFP_KERNEL, nid);
	if (!tbl)
		return NULL;

	FUNC0(&tbl->it_group_list);
	FUNC1(&tbl->it_kref);

	return tbl;
}