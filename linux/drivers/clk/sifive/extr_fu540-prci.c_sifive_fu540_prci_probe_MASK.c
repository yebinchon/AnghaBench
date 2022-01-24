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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct __prci_data {int /*<<< orphan*/  va; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,struct __prci_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct __prci_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct __prci_data *pd;
	int r;

	pd = FUNC6(dev, sizeof(*pd), GFP_KERNEL);
	if (!pd)
		return -ENOMEM;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	pd->va = FUNC5(dev, res);
	if (FUNC0(pd->va))
		return FUNC1(pd->va);

	r = FUNC2(dev, pd);
	if (r) {
		FUNC4(dev, "could not register clocks: %d\n", r);
		return r;
	}

	FUNC3(dev, "SiFive FU540 PRCI probed\n");

	return 0;
}