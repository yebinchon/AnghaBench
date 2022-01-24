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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct irq_domain {struct axon_msic* host_data; } ;
struct device_node {int dummy; } ;
struct axon_msic {int dummy; } ;
typedef  int /*<<< orphan*/  phandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct irq_domain* FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/  const) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static struct axon_msic *FUNC8(struct pci_dev *dev)
{
	struct irq_domain *irq_domain;
	struct device_node *dn, *tmp;
	const phandle *ph;
	struct axon_msic *msic = NULL;

	dn = FUNC5(FUNC7(dev));
	if (!dn) {
		FUNC0(&dev->dev, "axon_msi: no pci_dn found\n");
		return NULL;
	}

	for (; dn; dn = FUNC3(dn)) {
		ph = FUNC4(dn, "msi-translator", NULL);
		if (ph)
			break;
	}

	if (!ph) {
		FUNC0(&dev->dev,
			"axon_msi: no msi-translator property found\n");
		goto out_error;
	}

	tmp = dn;
	dn = FUNC2(*ph);
	FUNC6(tmp);
	if (!dn) {
		FUNC0(&dev->dev,
			"axon_msi: msi-translator doesn't point to a node\n");
		goto out_error;
	}

	irq_domain = FUNC1(dn);
	if (!irq_domain) {
		FUNC0(&dev->dev, "axon_msi: no irq_domain found for node %pOF\n",
			dn);
		goto out_error;
	}

	msic = irq_domain->host_data;

out_error:
	FUNC6(dn);

	return msic;
}