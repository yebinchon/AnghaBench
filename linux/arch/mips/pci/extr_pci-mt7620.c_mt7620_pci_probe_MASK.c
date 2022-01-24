#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  end; scalar_t__ start; } ;
struct TYPE_6__ {int /*<<< orphan*/  end; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LC_CKDRVPD ; 
#define  MT762X_SOC_MT7620A 130 
#define  MT762X_SOC_MT7628AN 129 
#define  MT762X_SOC_MT7688 128 
 int PCIE_LINK_UP_ST ; 
 int /*<<< orphan*/  PCIINT2 ; 
 int /*<<< orphan*/  PCIRST ; 
 int /*<<< orphan*/  PDRV_SW_SET ; 
 int /*<<< orphan*/  PPLL_DRV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RALINK_CLKCFG1 ; 
 int /*<<< orphan*/  RALINK_PCI0_BAR0SETUP_ADDR ; 
 int /*<<< orphan*/  RALINK_PCI0_CLASS ; 
 int /*<<< orphan*/  RALINK_PCI0_IMBASEBAR0_ADDR ; 
 int /*<<< orphan*/  RALINK_PCI0_STATUS ; 
 int /*<<< orphan*/  RALINK_PCIE0_CLK_EN ; 
 int /*<<< orphan*/  RALINK_PCI_IOBASE ; 
 int RALINK_PCI_IO_MAP_BASE ; 
 int /*<<< orphan*/  RALINK_PCI_MEMBASE ; 
 int RALINK_PCI_MEMORY_BASE ; 
 int /*<<< orphan*/  RALINK_PCI_PCICFG_ADDR ; 
 int /*<<< orphan*/  RALINK_PCI_PCIENA ; 
 int /*<<< orphan*/  bridge_base ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 TYPE_2__ iomem_resource ; 
 TYPE_1__ ioport_resource ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  mt7620_controller ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcie_base ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int ralink_soc ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rstpcie0 ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct resource *bridge_res = FUNC15(pdev,
							    IORESOURCE_MEM, 0);
	struct resource *pcie_res = FUNC15(pdev,
							  IORESOURCE_MEM, 1);
	u32 val = 0;

	rstpcie0 = FUNC5(&pdev->dev, "pcie0");
	if (FUNC0(rstpcie0))
		return FUNC1(rstpcie0);

	bridge_base = FUNC4(&pdev->dev, bridge_res);
	if (FUNC0(bridge_base))
		return FUNC1(bridge_base);

	pcie_base = FUNC4(&pdev->dev, pcie_res);
	if (FUNC0(pcie_base))
		return FUNC1(pcie_base);

	iomem_resource.start = 0;
	iomem_resource.end = ~0;
	ioport_resource.start = 0;
	ioport_resource.end = ~0;

	/* bring up the pci core */
	switch (ralink_soc) {
	case MT762X_SOC_MT7620A:
		if (FUNC7(pdev))
			return -1;
		break;

	case MT762X_SOC_MT7628AN:
	case MT762X_SOC_MT7688:
		if (FUNC8(pdev))
			return -1;
		break;

	default:
		FUNC3(&pdev->dev, "pcie is not supported on this hardware\n");
		return -1;
	}
	FUNC6(50);

	/* enable write access */
	FUNC12(PCIRST, 0, RALINK_PCI_PCICFG_ADDR);
	FUNC6(100);

	/* check if there is a card present */
	if ((FUNC13(RALINK_PCI0_STATUS) & PCIE_LINK_UP_ST) == 0) {
		FUNC17(rstpcie0);
		FUNC18(RALINK_PCIE0_CLK_EN, 0, RALINK_CLKCFG1);
		if (ralink_soc == MT762X_SOC_MT7620A)
			FUNC18(LC_CKDRVPD, PDRV_SW_SET, PPLL_DRV);
		FUNC3(&pdev->dev, "PCIE0 no card, disable it(RST&CLK)\n");
		return -1;
	}

	/* setup ranges */
	FUNC2(0xffffffff, RALINK_PCI_MEMBASE);
	FUNC2(RALINK_PCI_IO_MAP_BASE, RALINK_PCI_IOBASE);

	FUNC14(0x7FFF0001, RALINK_PCI0_BAR0SETUP_ADDR);
	FUNC14(RALINK_PCI_MEMORY_BASE, RALINK_PCI0_IMBASEBAR0_ADDR);
	FUNC14(0x06040001, RALINK_PCI0_CLASS);

	/* enable interrupts */
	FUNC12(0, PCIINT2, RALINK_PCI_PCIENA);

	/* voodoo from the SDK driver */
	FUNC9(NULL, 0, 4, 4, &val);
	FUNC10(NULL, 0, 4, 4, val | 0x7);

	FUNC11(&mt7620_controller, pdev->dev.of_node);
	FUNC16(&mt7620_controller);

	return 0;
}