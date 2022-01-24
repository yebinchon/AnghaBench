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
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct device {int dummy; } ;
struct bridge_controller {scalar_t__ baddr; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 struct bridge_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC1 (struct device*) ; 

dma_addr_t FUNC2(struct device *dev, phys_addr_t paddr)
{
	struct pci_dev *pdev = FUNC1(dev);
	struct bridge_controller *bc = FUNC0(pdev->bus);

	return bc->baddr + paddr;
}