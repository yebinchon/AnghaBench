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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_BASE_ADDRESS_0 ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_1 ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_INTERRUPT_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  toshiba_line_size ; 
 int /*<<< orphan*/  toshiba_ohci1394_dmi_table ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	if (!FUNC0(toshiba_ohci1394_dmi_table))
		return; /* only applies to certain Toshibas (so far) */

	/* Restore config space on Toshiba laptops */
	FUNC4(dev, PCI_CACHE_LINE_SIZE, toshiba_line_size);
	FUNC1(dev, PCI_INTERRUPT_LINE, (u8 *)&dev->irq);
	FUNC3(dev, PCI_BASE_ADDRESS_0,
			       FUNC2(dev, 0));
	FUNC3(dev, PCI_BASE_ADDRESS_1,
			       FUNC2(dev, 1));
}