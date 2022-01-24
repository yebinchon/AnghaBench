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
struct pci_dev {int /*<<< orphan*/  dev; TYPE_1__* resource; TYPE_2__* bus; scalar_t__ devfn; } ;
struct pci_controller {int /*<<< orphan*/  dn; } ;
struct TYPE_4__ {scalar_t__ self; } ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ end; scalar_t__ start; } ;

/* Variables and functions */
 int DEVICE_COUNT_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_controller* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  xilinx_pci_match ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	struct pci_controller *hose;
	int i;

	if (dev->devfn || dev->bus->self)
		return;

	hose = FUNC2(dev->bus);
	if (!hose)
		return;

	if (!FUNC1(xilinx_pci_match, hose->dn))
		return;

	/* Hide the PCI host BARs from the kernel as their content doesn't
	 * fit well in the resource management
	 */
	for (i = 0; i < DEVICE_COUNT_RESOURCE; i++) {
		dev->resource[i].start = 0;
		dev->resource[i].end = 0;
		dev->resource[i].flags = 0;
	}

	FUNC0(&dev->dev, "Hiding Xilinx plb-pci host bridge resources %s\n",
		 FUNC3(dev));
}