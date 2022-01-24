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
struct iommu_table_group {scalar_t__ group; struct iommu_table** tables; } ;
struct iommu_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu_table_group*) ; 

__attribute__((used)) static void FUNC4(struct iommu_table_group *table_group,
		const char *node_name)
{
	struct iommu_table *tbl;

	if (!table_group)
		return;

	tbl = table_group->tables[0];
#ifdef CONFIG_IOMMU_API
	if (table_group->group) {
		iommu_group_put(table_group->group);
		BUG_ON(table_group->group);
	}
#endif
	FUNC2(tbl);

	FUNC3(table_group);
}