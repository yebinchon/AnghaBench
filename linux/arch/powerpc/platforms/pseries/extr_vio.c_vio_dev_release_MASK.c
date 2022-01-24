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
struct iommu_table {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 struct iommu_table* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct iommu_table *tbl = FUNC0(dev);

	if (tbl)
		FUNC1(tbl);
	FUNC3(dev->of_node);
	FUNC2(FUNC4(dev));
}