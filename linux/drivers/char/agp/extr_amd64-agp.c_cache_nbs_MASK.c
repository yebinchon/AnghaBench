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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct pci_dev* misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_NB_GART ; 
 int ENODEV ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (struct pci_dev*,struct pci_dev*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *pdev, u32 cap_ptr)
{
	int i;

	if (FUNC0() < 0)
		return -ENODEV;

	if (!FUNC1(AMD_NB_GART))
		return -ENODEV;

	i = 0;
	for (i = 0; i < FUNC2(); i++) {
		struct pci_dev *dev = FUNC5(i)->misc;
		if (FUNC4(dev, pdev, cap_ptr) < 0) {
			FUNC3(&dev->dev, "no usable aperture found\n");
#ifdef __x86_64__
			/* should port this to i386 */
			FUNC3(&dev->dev, "consider rebooting with iommu=memaper=2 to get a good aperture\n");
#endif
			return -1;
		}
	}
	return 0;
}