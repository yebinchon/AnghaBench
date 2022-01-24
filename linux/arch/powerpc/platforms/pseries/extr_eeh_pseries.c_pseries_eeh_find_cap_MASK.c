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
typedef  int u32 ;
struct pci_dn {int dummy; } ;

/* Variables and functions */
 int PCI_CAP_LIST_ID ; 
 scalar_t__ PCI_CAP_LIST_NEXT ; 
 int FUNC0 (struct pci_dn*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dn*,int,int,int*) ; 

__attribute__((used)) static int FUNC2(struct pci_dn *pdn, int cap)
{
	int pos = FUNC0(pdn);
	int cnt = 48;	/* Maximal number of capabilities */
	u32 id;

	if (!pos)
		return 0;

        while (cnt--) {
		FUNC1(pdn, pos, 1, &pos);
		if (pos < 0x40)
			break;
		pos &= ~3;
		FUNC1(pdn, pos + PCI_CAP_LIST_ID, 1, &id);
		if (id == 0xff)
			break;
		if (id == cap)
			return pos;
		pos += PCI_CAP_LIST_NEXT;
	}

	return 0;
}