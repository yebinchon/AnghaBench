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
struct pci_pbm_info {int /*<<< orphan*/  pci_bus; scalar_t__ is_66mhz_capable; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_pbm_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_pbm_info*,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_pbm_info*) ; 

__attribute__((used)) static void FUNC3(struct pci_pbm_info *pbm,
			    struct device *parent)
{
	FUNC0(pbm);
	pbm->is_66mhz_capable = 0;
	pbm->pci_bus = FUNC1(pbm, parent);

	/* After the PCI bus scan is complete, we can register
	 * the error interrupt handlers.
	 */
	FUNC2(pbm);
}