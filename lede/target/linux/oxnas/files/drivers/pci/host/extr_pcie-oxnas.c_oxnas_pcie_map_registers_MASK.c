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
typedef  void* u32 ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct oxnas_pcie {void* pcie_ctrl_offset; void* outbound_offset; int /*<<< orphan*/ * phy; void* inbound; void* base; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,struct device_node*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device_node*,int,struct resource*) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,void**) ; 

__attribute__((used)) static int
FUNC8(struct platform_device *pdev,
			 struct device_node *np,
			 struct oxnas_pcie *pcie)
{
	struct resource regs;
	int ret = 0;
	u32 outbound_ctrl_offset;
	u32 pcie_ctrl_offset;

	ret = FUNC6(np, 0, &regs);
	if (ret) {
		FUNC2(&pdev->dev, "failed to parse base register space\n");
		return -EINVAL;
	}

	pcie->base = FUNC4(&pdev->dev, &regs);
	if (!pcie->base) {
		FUNC2(&pdev->dev, "failed to map base register space\n");
		return -ENOMEM;
	}

	ret = FUNC6(np, 1, &regs);
	if (ret) {
		FUNC2(&pdev->dev, "failed to parse inbound register space\n");
		return -EINVAL;
	}

	pcie->inbound = FUNC4(&pdev->dev, &regs);
	if (!pcie->inbound) {
		FUNC2(&pdev->dev, "failed to map inbound register space\n");
		return -ENOMEM;
	}

	pcie->phy = FUNC5(&pdev->dev, np, NULL);
	if (FUNC0(pcie->phy)) {
		if (FUNC1(pcie->phy) == -EPROBE_DEFER) {
			FUNC2(&pdev->dev, "failed to probe phy\n");
			return FUNC1(pcie->phy);
		}
		FUNC3(&pdev->dev, "phy not attached\n");
		pcie->phy = NULL;
	}

	if (FUNC7(np, "plxtech,pcie-outbound-offset",
				 &outbound_ctrl_offset)) {
		FUNC2(&pdev->dev, "failed to parse outbound register offset\n");
		return -EINVAL;
	}
	pcie->outbound_offset = outbound_ctrl_offset;

	if (FUNC7(np, "plxtech,pcie-ctrl-offset",
				 &pcie_ctrl_offset)) {
		FUNC2(&pdev->dev, "failed to parse pcie-ctrl register offset\n");
		return -EINVAL;
	}
	pcie->pcie_ctrl_offset = pcie_ctrl_offset;

	return 0;
}