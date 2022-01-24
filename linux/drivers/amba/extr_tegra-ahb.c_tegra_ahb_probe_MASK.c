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
struct tegra_ahb {int /*<<< orphan*/ * dev; int /*<<< orphan*/  regs; } ;
struct resource {int start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INCORRECT_BASE_ADDR_LOW_BYTE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct tegra_ahb* FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct tegra_ahb*) ; 
 int /*<<< orphan*/  tegra_ahb_gizmo ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_ahb*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct resource *res;
	struct tegra_ahb *ahb;
	size_t bytes;

	bytes = sizeof(*ahb) + sizeof(u32) * FUNC0(tegra_ahb_gizmo);
	ahb = FUNC5(&pdev->dev, bytes, GFP_KERNEL);
	if (!ahb)
		return -ENOMEM;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);

	/* Correct the IP block base address if necessary */
	if (res &&
	    (res->start & INCORRECT_BASE_ADDR_LOW_BYTE) ==
	    INCORRECT_BASE_ADDR_LOW_BYTE) {
		FUNC3(&pdev->dev, "incorrect AHB base address in DT data - enabling workaround\n");
		res->start -= INCORRECT_BASE_ADDR_LOW_BYTE;
	}

	ahb->regs = FUNC4(&pdev->dev, res);
	if (FUNC1(ahb->regs))
		return FUNC2(ahb->regs);

	ahb->dev = &pdev->dev;
	FUNC7(pdev, ahb);
	FUNC8(ahb);
	return 0;
}