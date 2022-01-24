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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pci_pbm_info {scalar_t__ controller_regs; scalar_t__ pci_csr; scalar_t__ pci_afar; scalar_t__ pci_afsr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBM_CHIP_TYPE_SABRE ; 
 scalar_t__ SABRE_PCICTRL ; 
 scalar_t__ SABRE_PIOAFAR ; 
 scalar_t__ SABRE_PIOAFSR ; 
 int /*<<< orphan*/  FUNC0 (struct pci_pbm_info*,struct platform_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_pbm_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct pci_pbm_info *pbm,
			   struct platform_device *op)
{
	FUNC0(pbm, op, "SABRE", PBM_CHIP_TYPE_SABRE);
	pbm->pci_afsr = pbm->controller_regs + SABRE_PIOAFSR;
	pbm->pci_afar = pbm->controller_regs + SABRE_PIOAFAR;
	pbm->pci_csr = pbm->controller_regs + SABRE_PCICTRL;
	FUNC1(pbm, &op->dev);
}