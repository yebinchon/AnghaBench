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
struct iommu_table_group_link {int /*<<< orphan*/  next; struct iommu_table_group* table_group; } ;
struct iommu_table_group {int /*<<< orphan*/ * tables; } ;
struct iommu_table {int /*<<< orphan*/  it_group_list; } ;

/* Variables and functions */
 long EINVAL ; 
 long ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_table*) ; 
 struct iommu_table_group_link* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

long FUNC4(int node, int num,
		struct iommu_table *tbl,
		struct iommu_table_group *table_group)
{
	struct iommu_table_group_link *tgl = NULL;

	if (FUNC0(!tbl || !table_group))
		return -EINVAL;

	tgl = FUNC2(sizeof(struct iommu_table_group_link), GFP_KERNEL,
			node);
	if (!tgl)
		return -ENOMEM;

	tgl->table_group = table_group;
	FUNC3(&tgl->next, &tbl->it_group_list);

	table_group->tables[num] = FUNC1(tbl);

	return 0;
}