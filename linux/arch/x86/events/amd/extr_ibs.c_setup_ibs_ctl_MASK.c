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
typedef  int u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IBSCTL ; 
 int IBSCTL_LVT_OFFSET_VALID ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_AMD_10H_NB_MISC ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_AMD ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(int ibs_eilvt_off)
{
	struct pci_dev *cpu_cfg;
	int nodes;
	u32 value = 0;

	nodes = 0;
	cpu_cfg = NULL;
	do {
		cpu_cfg = FUNC1(PCI_VENDOR_ID_AMD,
					 PCI_DEVICE_ID_AMD_10H_NB_MISC,
					 cpu_cfg);
		if (!cpu_cfg)
			break;
		++nodes;
		FUNC3(cpu_cfg, IBSCTL, ibs_eilvt_off
				       | IBSCTL_LVT_OFFSET_VALID);
		FUNC2(cpu_cfg, IBSCTL, &value);
		if (value != (ibs_eilvt_off | IBSCTL_LVT_OFFSET_VALID)) {
			FUNC0(cpu_cfg);
			FUNC4("Failed to setup IBS LVT offset, IBSCTL = 0x%08x\n",
				 value);
			return -EINVAL;
		}
	} while (1);

	if (!nodes) {
		FUNC4("No CPU node configured for IBS\n");
		return -ENODEV;
	}

	return 0;
}