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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct cns3xxx_pcie {int* irqs; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct cns3xxx_pcie* FUNC3 (struct pci_dev const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(const struct pci_dev *dev, u8 slot, u8 pin)
{
	struct cns3xxx_pcie *cnspci = FUNC3(dev);
	int irq = cnspci->irqs[!!dev->bus->number];

	FUNC4("PCIe map irq: %04d:%02x:%02x.%02x slot %d, pin %d, irq: %d\n",
		FUNC2(dev->bus), dev->bus->number, FUNC1(dev->devfn),
		FUNC0(dev->devfn), slot, pin, irq);

	return irq;
}