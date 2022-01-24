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
struct pci_bus {struct pci_bus* parent; } ;
struct eeh_pe {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct pci_bus* FUNC0 (struct eeh_pe*) ; 
 char* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC2 (struct pci_bus*) ; 
 scalar_t__ FUNC3 (struct pci_bus*) ; 

const char *FUNC4(struct eeh_pe *pe)
{
	struct pci_bus *bus = FUNC0(pe);
	struct device_node *dn;
	const char *loc = NULL;

	while (bus) {
		dn = FUNC2(bus);
		if (!dn) {
			bus = bus->parent;
			continue;
		}

		if (FUNC3(bus))
			loc = FUNC1(dn, "ibm,io-base-loc-code", NULL);
		else
			loc = FUNC1(dn, "ibm,slot-location-code",
					      NULL);

		if (loc)
			return loc;

		bus = bus->parent;
	}

	return "N/A";
}