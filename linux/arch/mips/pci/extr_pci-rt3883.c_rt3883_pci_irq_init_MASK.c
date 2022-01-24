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
struct rt3883_pci_controller {int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  intc_of_node; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  RT3883_PCI_IRQ_COUNT ; 
 int /*<<< orphan*/  RT3883_PCI_REG_PCIENA ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rt3883_pci_controller*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct rt3883_pci_controller*) ; 
 int /*<<< orphan*/  rt3883_pci_irq_domain_ops ; 
 int /*<<< orphan*/  rt3883_pci_irq_handler ; 
 int /*<<< orphan*/  FUNC4 (struct rt3883_pci_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
			       struct rt3883_pci_controller *rpc)
{
	int irq;

	irq = FUNC2(rpc->intc_of_node, 0);
	if (irq == 0) {
		FUNC0(dev, "%pOF has no IRQ", rpc->intc_of_node);
		return -EINVAL;
	}

	/* disable all interrupts */
	FUNC4(rpc, 0, RT3883_PCI_REG_PCIENA);

	rpc->irq_domain =
		FUNC1(rpc->intc_of_node, RT3883_PCI_IRQ_COUNT,
				      &rt3883_pci_irq_domain_ops,
				      rpc);
	if (!rpc->irq_domain) {
		FUNC0(dev, "unable to add IRQ domain\n");
		return -ENODEV;
	}

	FUNC3(irq, rt3883_pci_irq_handler, rpc);

	return 0;
}