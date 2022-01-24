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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {scalar_t__ msi_cap; } ;

/* Variables and functions */
 scalar_t__ PCI_MSI_FLAGS ; 
 int /*<<< orphan*/  PCI_MSI_FLAGS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct pci_dev *dev, int enable)
{
	u16 control;

	FUNC0(dev, dev->msi_cap + PCI_MSI_FLAGS, &control);
	control &= ~PCI_MSI_FLAGS_ENABLE;
	if (enable)
		control |= PCI_MSI_FLAGS_ENABLE;
	FUNC1(dev, dev->msi_cap + PCI_MSI_FLAGS, control);
}