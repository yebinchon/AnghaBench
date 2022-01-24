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
struct pci_pbm_info {int /*<<< orphan*/  portid; struct pci_pbm_info* next; } ;

/* Variables and functions */
 struct pci_pbm_info* pci_pbm_root ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct pci_pbm_info *FUNC1(u32 portid, int chip_type)
{
	struct pci_pbm_info *pbm;

	for (pbm = pci_pbm_root; pbm; pbm = pbm->next) {
		if (FUNC0(pbm->portid, portid, chip_type))
			return pbm;
	}
	return NULL;
}