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
struct iommu_table_group {struct iommu_table** tables; } ;
struct iommu_table {int /*<<< orphan*/  it_kref; int /*<<< orphan*/  it_group_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_table_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct iommu_table_group *FUNC4(int node)
{
	struct iommu_table_group *table_group;
	struct iommu_table *tbl;

	table_group = FUNC3(sizeof(struct iommu_table_group), GFP_KERNEL,
			   node);
	if (!table_group)
		return NULL;

	tbl = FUNC3(sizeof(struct iommu_table), GFP_KERNEL, node);
	if (!tbl)
		goto free_group;

	FUNC0(&tbl->it_group_list);
	FUNC2(&tbl->it_kref);

	table_group->tables[0] = tbl;

	return table_group;

free_group:
	FUNC1(table_group);
	return NULL;
}