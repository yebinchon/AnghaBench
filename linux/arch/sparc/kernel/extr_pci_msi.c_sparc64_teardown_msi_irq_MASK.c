#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sparc64_msiq_ops {int (* msi_teardown ) (struct pci_pbm_info*,unsigned int) ;} ;
struct pci_pbm_info {int msi_num; unsigned int* msi_irq_table; int msi_first; int /*<<< orphan*/  name; struct sparc64_msiq_ops* msi_ops; } ;
struct TYPE_3__ {struct pci_pbm_info* host_controller; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_pbm_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*,int /*<<< orphan*/ ,unsigned int,...) ; 
 int FUNC4 (struct pci_pbm_info*,unsigned int) ; 

__attribute__((used)) static void FUNC5(unsigned int irq,
				     struct pci_dev *pdev)
{
	struct pci_pbm_info *pbm = pdev->dev.archdata.host_controller;
	const struct sparc64_msiq_ops *ops = pbm->msi_ops;
	unsigned int msi_num;
	int i, err;

	for (i = 0; i < pbm->msi_num; i++) {
		if (pbm->msi_irq_table[i] == irq)
			break;
	}
	if (i >= pbm->msi_num) {
		FUNC3(pdev, "%s: teardown: No MSI for irq %u\n", pbm->name,
			irq);
		return;
	}

	msi_num = pbm->msi_first + i;
	pbm->msi_irq_table[i] = ~0U;

	err = ops->msi_teardown(pbm, msi_num);
	if (err) {
		FUNC3(pdev, "%s: teardown: ops->teardown() on MSI %u, "
			"irq %u, gives error %d\n", pbm->name, msi_num, irq,
			err);
		return;
	}

	FUNC0(pbm, msi_num);

	FUNC2(irq, NULL);
	FUNC1(irq);
}