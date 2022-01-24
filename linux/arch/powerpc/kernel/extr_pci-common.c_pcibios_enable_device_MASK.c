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
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_device_hook ) (struct pci_dev*) ;} ;
struct pci_controller {TYPE_1__ controller_ops; } ;

/* Variables and functions */
 int EINVAL ; 
 struct pci_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

int FUNC3(struct pci_dev *dev, int mask)
{
	struct pci_controller *phb = FUNC0(dev->bus);

	if (phb->controller_ops.enable_device_hook)
		if (!phb->controller_ops.enable_device_hook(dev))
			return -EINVAL;

	return FUNC1(dev, mask);
}