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
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct device_node*) ; 

__attribute__((used)) static struct device_node *FUNC6(struct pci_dev *dev, int *total)
{
	struct device_node *dn;
	const __be32 *p;

	dn = FUNC3(FUNC4(dev));
	while (dn) {
		p = FUNC2(dn, "ibm,pe-total-#msi", NULL);
		if (p) {
			FUNC5("rtas_msi: found prop on dn %pOF\n",
				dn);
			*total = FUNC0(p);
			return dn;
		}

		dn = FUNC1(dn);
	}

	return NULL;
}