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
struct pci_pbm_info {scalar_t__ chip_type; int /*<<< orphan*/  pci_bus; TYPE_2__* op; int /*<<< orphan*/  is_66mhz_capable; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ PBM_CHIP_TYPE_TOMATILLO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_pbm_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_pbm_info*,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_pbm_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_pbm_info*) ; 

__attribute__((used)) static void FUNC5(struct pci_pbm_info *pbm, struct device *parent)
{
	FUNC1(pbm);
	pbm->is_66mhz_capable =
		(FUNC0(pbm->op->dev.of_node, "66mhz-capable", NULL)
		 != NULL);

	pbm->pci_bus = FUNC2(pbm, parent);

	if (pbm->chip_type == PBM_CHIP_TYPE_TOMATILLO)
		FUNC4(pbm);
	else
		FUNC3(pbm);
}