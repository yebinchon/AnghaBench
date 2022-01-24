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
struct pci_driver {scalar_t__ err_handler; } ;
struct pci_dev {int dummy; } ;
struct eeh_dev {int /*<<< orphan*/  physfn; } ;
struct TYPE_2__ {int /*<<< orphan*/  vf_index; } ;

/* Variables and functions */
 struct pci_dev* FUNC0 (struct eeh_dev*) ; 
 TYPE_1__* FUNC1 (struct eeh_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct eeh_dev*,char*) ; 
 struct pci_driver* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC6(struct eeh_dev *edev)
{
	struct pci_driver *driver;
	struct pci_dev *dev = FUNC0(edev);

	if (!(edev->physfn)) {
		FUNC2(edev, "Not for VF\n");
		return NULL;
	}

	driver = FUNC3(dev);
	if (driver) {
		if (driver->err_handler) {
			FUNC4(dev);
			return NULL;
		}
		FUNC4(dev);
	}

#ifdef CONFIG_PCI_IOV
	pci_iov_add_virtfn(edev->physfn, eeh_dev_to_pdn(edev)->vf_index);
#endif
	return NULL;
}