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
struct zpci_dev {unsigned long start_dma; int /*<<< orphan*/  iommu_pages; int /*<<< orphan*/  iommu_bitmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct device*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct zpci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC5(struct device *dev,
				       unsigned long start, int size)
{
	struct zpci_dev *zdev = FUNC4(FUNC3(dev));
	unsigned long boundary_size;

	boundary_size = FUNC0(FUNC1(dev) + 1,
			      PAGE_SIZE) >> PAGE_SHIFT;
	return FUNC2(zdev->iommu_bitmap, zdev->iommu_pages,
				start, size, zdev->start_dma >> PAGE_SHIFT,
				boundary_size, 0);
}