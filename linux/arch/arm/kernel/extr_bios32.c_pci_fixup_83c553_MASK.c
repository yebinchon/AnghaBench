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
struct pci_dev {TYPE_1__* resource; } ;
struct TYPE_2__ {scalar_t__ start; int /*<<< orphan*/  end; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_BASE_ADDRESS_0 ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_SPACE_MEMORY ; 
 int PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	/*
	 * Set memory region to start at address 0, and enable IO
	 */
	FUNC2(dev, PCI_BASE_ADDRESS_0, PCI_BASE_ADDRESS_SPACE_MEMORY);
	FUNC3(dev, PCI_COMMAND, PCI_COMMAND_IO);

	dev->resource[0].end -= dev->resource[0].start;
	dev->resource[0].start = 0;

	/*
	 * All memory requests from ISA to be channelled to PCI
	 */
	FUNC1(dev, 0x48, 0xff);

	/*
	 * Enable ping-pong on bus master to ISA bridge transactions.
	 * This improves the sound DMA substantially.  The fixed
	 * priority arbiter also helps (see below).
	 */
	FUNC1(dev, 0x42, 0x01);

	/*
	 * Enable PCI retry
	 */
	FUNC1(dev, 0x40, 0x22);

	/*
	 * We used to set the arbiter to "park on last master" (bit
	 * 1 set), but unfortunately the CyberPro does not park the
	 * bus.  We must therefore park on CPU.  Unfortunately, this
	 * may trigger yet another bug in the 553.
	 */
	FUNC1(dev, 0x83, 0x02);

	/*
	 * Make the ISA DMA request lowest priority, and disable
	 * rotating priorities completely.
	 */
	FUNC1(dev, 0x80, 0x11);
	FUNC1(dev, 0x81, 0x00);

	/*
	 * Route INTA input to IRQ 11, and set IRQ11 to be level
	 * sensitive.
	 */
	FUNC3(dev, 0x44, 0xb000);
	FUNC0(0x08, 0x4d1);
}