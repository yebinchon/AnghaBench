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
struct pci_dn {TYPE_1__* phb; } ;
struct pci_bus {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 struct pci_dn* FUNC0 (struct device_node*) ; 
 struct pci_bus* FUNC1 (int /*<<< orphan*/ ,struct device_node*) ; 

struct pci_bus *FUNC2(struct device_node *dn)
{
	struct pci_dn *pdn = FUNC0(dn);

	if (!pdn  || !pdn->phb || !pdn->phb->bus)
		return NULL;

	return FUNC1(pdn->phb->bus, dn);
}