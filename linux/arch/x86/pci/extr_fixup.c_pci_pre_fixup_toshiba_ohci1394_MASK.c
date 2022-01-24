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
struct pci_dev {int /*<<< orphan*/  current_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  toshiba_line_size ; 
 int /*<<< orphan*/  toshiba_ohci1394_dmi_table ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	if (!FUNC0(toshiba_ohci1394_dmi_table))
		return; /* only applies to certain Toshibas (so far) */

	dev->current_state = PCI_D3cold;
	FUNC1(dev, PCI_CACHE_LINE_SIZE, &toshiba_line_size);
}