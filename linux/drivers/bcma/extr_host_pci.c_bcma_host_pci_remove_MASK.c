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
struct pci_dev {int dummy; } ;
struct bcma_bus {int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct bcma_bus* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *dev)
{
	struct bcma_bus *bus = FUNC3(dev);

	FUNC0(bus);
	FUNC4(dev, bus->mmio);
	FUNC5(dev);
	FUNC2(dev);
	FUNC1(bus);
}