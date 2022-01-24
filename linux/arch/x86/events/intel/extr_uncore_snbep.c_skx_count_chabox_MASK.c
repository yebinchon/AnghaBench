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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  SKX_CAPID6 ; 
 int /*<<< orphan*/  SKX_CHA_BIT_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void)
{
	struct pci_dev *dev = NULL;
	u32 val = 0;

	dev = FUNC2(PCI_VENDOR_ID_INTEL, 0x2083, dev);
	if (!dev)
		goto out;

	FUNC3(dev, SKX_CAPID6, &val);
	val &= SKX_CHA_BIT_MASK;
out:
	FUNC1(dev);
	return FUNC0(val);
}