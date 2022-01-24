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
struct pci_dn {int dummy; } ;

/* Variables and functions */
 struct pci_dn* FUNC0 (struct pci_dn*,struct pci_dn*) ; 

void *FUNC1(struct pci_dn *root,
		      void *(*fn)(struct pci_dn *, void *),
		      void *data)
{
	struct pci_dn *pdn = root;
	void *ret;

	/* Only scan the child nodes */
	for (pdn = FUNC0(root, pdn); pdn;
	     pdn = FUNC0(root, pdn)) {
		ret = fn(pdn, data);
		if (ret)
			return ret;
	}

	return NULL;
}