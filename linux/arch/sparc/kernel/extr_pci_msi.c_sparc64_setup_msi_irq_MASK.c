#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sparc64_msiq_ops {int (* msi_setup ) (struct pci_pbm_info*,int /*<<< orphan*/ ,int,int) ;} ;
struct pci_pbm_info {unsigned int* msi_irq_table; int msi_first; int msi64_start; int msi32_start; struct sparc64_msiq_ops* msi_ops; } ;
struct TYPE_4__ {struct pci_pbm_info* host_controller; } ;
struct TYPE_5__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct msi_msg {int address_hi; int address_lo; int data; } ;
struct TYPE_6__ {scalar_t__ is_64; } ;
struct msi_desc {TYPE_3__ msi_attrib; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct pci_pbm_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_pbm_info*,int) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,struct msi_desc*) ; 
 int /*<<< orphan*/  msi_irq ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,struct msi_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_pbm_info*) ; 
 int FUNC9 (struct pci_pbm_info*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(unsigned int *irq_p,
				 struct pci_dev *pdev,
				 struct msi_desc *entry)
{
	struct pci_pbm_info *pbm = pdev->dev.archdata.host_controller;
	const struct sparc64_msiq_ops *ops = pbm->msi_ops;
	struct msi_msg msg;
	int msi, err;
	u32 msiqid;

	*irq_p = FUNC2(0, 0);
	err = -ENOMEM;
	if (!*irq_p)
		goto out_err;

	FUNC5(*irq_p, &msi_irq, handle_simple_irq,
				      "MSI");

	err = FUNC0(pbm);
	if (FUNC10(err < 0))
		goto out_irq_free;

	msi = err;

	msiqid = FUNC8(pbm);

	err = ops->msi_setup(pbm, msiqid, msi,
			     (entry->msi_attrib.is_64 ? 1 : 0));
	if (err)
		goto out_msi_free;

	pbm->msi_irq_table[msi - pbm->msi_first] = *irq_p;

	if (entry->msi_attrib.is_64) {
		msg.address_hi = pbm->msi64_start >> 32;
		msg.address_lo = pbm->msi64_start & 0xffffffff;
	} else {
		msg.address_hi = 0;
		msg.address_lo = pbm->msi32_start;
	}
	msg.data = msi;

	FUNC6(*irq_p, entry);
	FUNC7(*irq_p, &msg);

	return 0;

out_msi_free:
	FUNC1(pbm, msi);

out_irq_free:
	FUNC4(*irq_p, NULL);
	FUNC3(*irq_p);
	*irq_p = 0;

out_err:
	return err;
}