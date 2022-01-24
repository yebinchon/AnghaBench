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
struct pci_dev {TYPE_1__* bus; int /*<<< orphan*/  devfn; } ;
struct TYPE_2__ {scalar_t__ number; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_PREF_MEMORY_BASE ; 
 int /*<<< orphan*/  PCI_PREF_MEMORY_LIMIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	if (FUNC0(dev->devfn) == 6 && dev->bus->number == 0) {
		/* disable prefetched memory range */
		FUNC2(dev, PCI_PREF_MEMORY_LIMIT, 0);
		FUNC2(dev, PCI_PREF_MEMORY_BASE, 0x10);

		FUNC1(dev, PCI_CACHE_LINE_SIZE, 4);
	}
}