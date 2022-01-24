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
struct pci_controller {int /*<<< orphan*/  dn; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pci_controller* FUNC1 (int /*<<< orphan*/ ) ; 

struct device_node *FUNC2(struct pci_dev *dev)
{
	struct pci_controller *hose = FUNC1(dev->bus);

	return FUNC0(hose->dn);
}