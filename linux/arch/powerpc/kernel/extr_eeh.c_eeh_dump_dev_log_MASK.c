#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char* u32 ;
struct pci_dn {int /*<<< orphan*/  devfn; int /*<<< orphan*/  busno; TYPE_1__* phb; } ;
struct eeh_dev {int mode; int pcix_cap; int pcie_cap; int aer_cap; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_4__ {int /*<<< orphan*/  (* read_config ) (struct pci_dn*,int,int,char**) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  global_number; } ;

/* Variables and functions */
 int EEH_DEV_BRIDGE ; 
 int PCI_BRIDGE_CONTROL ; 
 int PCI_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PCI_SEC_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PCI_VENDOR_ID ; 
 struct pci_dn* FUNC2 (struct eeh_dev*) ; 
 TYPE_2__* eeh_ops ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dn*,int,int,char**) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dn*,int,int,char**) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dn*,int,int,char**) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dn*,int,int,char**) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dn*,int,int,char**) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dn*,int,int,char**) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dn*,int,int,char**) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dn*,int,int,char**) ; 

__attribute__((used)) static size_t FUNC13(struct eeh_dev *edev, char *buf, size_t len)
{
	struct pci_dn *pdn = FUNC2(edev);
	u32 cfg;
	int cap, i;
	int n = 0, l = 0;
	char buffer[128];

	if (!pdn) {
		FUNC3("EEH: Note: No error log for absent device.\n");
		return 0;
	}

	n += FUNC4(buf+n, len-n, "%04x:%02x:%02x.%01x\n",
		       pdn->phb->global_number, pdn->busno,
		       FUNC1(pdn->devfn), FUNC0(pdn->devfn));
	FUNC3("EEH: of node=%04x:%02x:%02x.%01x\n",
		pdn->phb->global_number, pdn->busno,
		FUNC1(pdn->devfn), FUNC0(pdn->devfn));

	eeh_ops->read_config(pdn, PCI_VENDOR_ID, 4, &cfg);
	n += FUNC4(buf+n, len-n, "dev/vend:%08x\n", cfg);
	FUNC3("EEH: PCI device/vendor: %08x\n", cfg);

	eeh_ops->read_config(pdn, PCI_COMMAND, 4, &cfg);
	n += FUNC4(buf+n, len-n, "cmd/stat:%x\n", cfg);
	FUNC3("EEH: PCI cmd/status register: %08x\n", cfg);

	/* Gather bridge-specific registers */
	if (edev->mode & EEH_DEV_BRIDGE) {
		eeh_ops->read_config(pdn, PCI_SEC_STATUS, 2, &cfg);
		n += FUNC4(buf+n, len-n, "sec stat:%x\n", cfg);
		FUNC3("EEH: Bridge secondary status: %04x\n", cfg);

		eeh_ops->read_config(pdn, PCI_BRIDGE_CONTROL, 2, &cfg);
		n += FUNC4(buf+n, len-n, "brdg ctl:%x\n", cfg);
		FUNC3("EEH: Bridge control: %04x\n", cfg);
	}

	/* Dump out the PCI-X command and status regs */
	cap = edev->pcix_cap;
	if (cap) {
		eeh_ops->read_config(pdn, cap, 4, &cfg);
		n += FUNC4(buf+n, len-n, "pcix-cmd:%x\n", cfg);
		FUNC3("EEH: PCI-X cmd: %08x\n", cfg);

		eeh_ops->read_config(pdn, cap+4, 4, &cfg);
		n += FUNC4(buf+n, len-n, "pcix-stat:%x\n", cfg);
		FUNC3("EEH: PCI-X status: %08x\n", cfg);
	}

	/* If PCI-E capable, dump PCI-E cap 10 */
	cap = edev->pcie_cap;
	if (cap) {
		n += FUNC4(buf+n, len-n, "pci-e cap10:\n");
		FUNC3("EEH: PCI-E capabilities and status follow:\n");

		for (i=0; i<=8; i++) {
			eeh_ops->read_config(pdn, cap+4*i, 4, &cfg);
			n += FUNC4(buf+n, len-n, "%02x:%x\n", 4*i, cfg);

			if ((i % 4) == 0) {
				if (i != 0)
					FUNC3("%s\n", buffer);

				l = FUNC4(buffer, sizeof(buffer),
					      "EEH: PCI-E %02x: %08x ",
					      4*i, cfg);
			} else {
				l += FUNC4(buffer+l, sizeof(buffer)-l,
					       "%08x ", cfg);
			}

		}

		FUNC3("%s\n", buffer);
	}

	/* If AER capable, dump it */
	cap = edev->aer_cap;
	if (cap) {
		n += FUNC4(buf+n, len-n, "pci-e AER:\n");
		FUNC3("EEH: PCI-E AER capability register set follows:\n");

		for (i=0; i<=13; i++) {
			eeh_ops->read_config(pdn, cap+4*i, 4, &cfg);
			n += FUNC4(buf+n, len-n, "%02x:%x\n", 4*i, cfg);

			if ((i % 4) == 0) {
				if (i != 0)
					FUNC3("%s\n", buffer);

				l = FUNC4(buffer, sizeof(buffer),
					      "EEH: PCI-E AER %02x: %08x ",
					      4*i, cfg);
			} else {
				l += FUNC4(buffer+l, sizeof(buffer)-l,
					       "%08x ", cfg);
			}
		}

		FUNC3("%s\n", buffer);
	}

	return n;
}