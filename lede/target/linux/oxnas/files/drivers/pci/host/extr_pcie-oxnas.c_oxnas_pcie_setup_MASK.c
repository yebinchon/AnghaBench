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
struct pci_sys_data {int /*<<< orphan*/  busnr; int /*<<< orphan*/  resources; int /*<<< orphan*/  io_offset; int /*<<< orphan*/  mem_offset; } ;
struct TYPE_5__ {int /*<<< orphan*/  start; } ;
struct TYPE_6__ {int /*<<< orphan*/  start; } ;
struct oxnas_pcie {int /*<<< orphan*/  cfgbase; TYPE_2__ cfg; TYPE_1__* pdev; TYPE_3__ busn; int /*<<< orphan*/  io; int /*<<< orphan*/  pre_mem; int /*<<< orphan*/  non_mem; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct oxnas_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct oxnas_pcie* FUNC5 (struct pci_sys_data*) ; 

__attribute__((used)) static int FUNC6(int nr, struct pci_sys_data *sys)
{
	struct oxnas_pcie *pcie = FUNC5(sys);

	FUNC3(&sys->resources, &pcie->non_mem, sys->mem_offset);
	FUNC3(&sys->resources, &pcie->pre_mem, sys->mem_offset);
	FUNC3(&sys->resources, &pcie->io, sys->io_offset);
	FUNC2(&sys->resources, &pcie->busn);
	if (sys->busnr == 0) { /* default one */
		sys->busnr = pcie->busn.start;
	}
	/* do not use devm_ioremap_resource, it does not like cfg resource */
	pcie->cfgbase = FUNC0(&pcie->pdev->dev, pcie->cfg.start,
				     FUNC4(&pcie->cfg));
	if (!pcie->cfgbase)
		return -ENOMEM;

	FUNC1(pcie);

	return 1;
}