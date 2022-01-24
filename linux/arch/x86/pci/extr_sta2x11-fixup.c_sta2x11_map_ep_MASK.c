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
struct sta2x11_mapping {scalar_t__ amba_base; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int AHB_CRW_ENABLE ; 
 int AHB_CRW_WTYPE_MEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int STA2X11_AMBA_SIZE ; 
 int STA2X11_NR_FUNCS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct sta2x11_mapping* FUNC8 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct sta2x11_mapping *map = FUNC8(pdev);
	int i;

	if (!map)
		return;
	FUNC5(pdev, FUNC0(0), &map->amba_base);

	/* Configure AHB mapping */
	FUNC6(pdev, FUNC3(0), 0);
	FUNC6(pdev, FUNC2(0), 0);
	FUNC6(pdev, FUNC1(0), STA2X11_AMBA_SIZE |
			       AHB_CRW_WTYPE_MEM | AHB_CRW_ENABLE);

	/* Disable all the other windows */
	for (i = 1; i < STA2X11_NR_FUNCS; i++)
		FUNC6(pdev, FUNC1(i), 0);

	FUNC4(&pdev->dev,
		 "sta2x11: Map EP %i: AMBA address %#8x-%#8x\n",
		 FUNC7(pdev),  map->amba_base,
		 map->amba_base + STA2X11_AMBA_SIZE - 1);
}