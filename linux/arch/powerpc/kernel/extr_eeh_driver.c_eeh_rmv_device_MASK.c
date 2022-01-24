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
struct pci_driver {TYPE_1__* err_handler; } ;
struct pci_dn {int /*<<< orphan*/  pe_number; int /*<<< orphan*/  vf_index; } ;
struct pci_dev {scalar_t__ hdr_type; } ;
struct eeh_rmv_data {int /*<<< orphan*/  removed_vf_list; int /*<<< orphan*/  removed_dev_count; } ;
struct eeh_dev {int /*<<< orphan*/  rmv_entry; int /*<<< orphan*/ * pdev; scalar_t__ physfn; int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {scalar_t__ slot_reset; scalar_t__ error_detected; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEH_DEV_DISCONNECTED ; 
 int /*<<< orphan*/  IODA_INVALID_PE ; 
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ; 
 struct pci_dev* FUNC0 (struct eeh_dev*) ; 
 struct pci_dn* FUNC1 (struct eeh_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct eeh_dev*) ; 
 struct pci_driver* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct eeh_dev *edev, void *userdata)
{
	struct pci_driver *driver;
	struct pci_dev *dev = FUNC0(edev);
	struct eeh_rmv_data *rmv_data = (struct eeh_rmv_data *)userdata;

	/*
	 * Actually, we should remove the PCI bridges as well.
	 * However, that's lots of complexity to do that,
	 * particularly some of devices under the bridge might
	 * support EEH. So we just care about PCI devices for
	 * simplicity here.
	 */
	if (!FUNC2(edev) ||
	    (dev->hdr_type == PCI_HEADER_TYPE_BRIDGE))
		return;

	if (rmv_data) {
		driver = FUNC3(dev);
		if (driver) {
			if (driver->err_handler &&
			    driver->err_handler->error_detected &&
			    driver->err_handler->slot_reset) {
				FUNC4(dev);
				return;
			}
			FUNC4(dev);
		}
	}

	/* Remove it from PCI subsystem */
	FUNC11("EEH: Removing %s without EEH sensitive driver\n",
		FUNC8(dev));
	edev->mode |= EEH_DEV_DISCONNECTED;
	if (rmv_data)
		rmv_data->removed_dev_count++;

	if (edev->physfn) {
#ifdef CONFIG_PCI_IOV
		struct pci_dn *pdn = eeh_dev_to_pdn(edev);

		pci_iov_remove_virtfn(edev->physfn, pdn->vf_index);
		edev->pdev = NULL;

		/*
		 * We have to set the VF PE number to invalid one, which is
		 * required to plug the VF successfully.
		 */
		pdn->pe_number = IODA_INVALID_PE;
#endif
		if (rmv_data)
			FUNC5(&edev->rmv_entry, &rmv_data->removed_vf_list);
	} else {
		FUNC7();
		FUNC9(dev);
		FUNC10();
	}
}