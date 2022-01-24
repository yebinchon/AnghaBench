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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dn {int dummy; } ;
struct eeh_dev {int /*<<< orphan*/  pcie_cap; } ;

/* Variables and functions */
 scalar_t__ PCIBIOS_SUCCESSFUL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct eeh_dev* FUNC2 (struct pci_dn*) ; 
 scalar_t__ FUNC3 (struct pci_dn*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct pci_dn *pdn, int cap)
{
	struct eeh_dev *edev = FUNC2(pdn);
	u32 header;
	int pos = 256;
	int ttl = (4096 - 256) / 8;

	if (!edev || !edev->pcie_cap)
		return 0;
	if (FUNC3(pdn, pos, 4, &header) != PCIBIOS_SUCCESSFUL)
		return 0;
	else if (!header)
		return 0;

	while (ttl-- > 0) {
		if (FUNC0(header) == cap && pos)
			return pos;

		pos = FUNC1(header);
		if (pos < 256)
			break;

		if (FUNC3(pdn, pos, 4, &header) != PCIBIOS_SUCCESSFUL)
			break;
	}

	return 0;
}