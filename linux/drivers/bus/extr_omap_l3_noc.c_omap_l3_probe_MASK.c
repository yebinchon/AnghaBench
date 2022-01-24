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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap_l3 {int num_modules; int debug_irq; int app_irq; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * l3_base; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L3_BASE_IS_SUBMODULE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct omap_l3* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,char*,struct omap_l3*) ; 
 int /*<<< orphan*/  l3_interrupt_handler ; 
 int /*<<< orphan*/  l3_noc_match ; 
 int /*<<< orphan*/  FUNC7 (struct omap_l3*,int /*<<< orphan*/ ,int) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC9 (struct platform_device*,int) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct omap_l3*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	const struct of_device_id *of_id;
	static struct omap_l3 *l3;
	int ret, i, res_idx;

	of_id = FUNC8(l3_noc_match, &pdev->dev);
	if (!of_id) {
		FUNC3(&pdev->dev, "OF data missing\n");
		return -EINVAL;
	}

	l3 = FUNC5(&pdev->dev, sizeof(*l3), GFP_KERNEL);
	if (!l3)
		return -ENOMEM;

	FUNC7(l3, of_id->data, sizeof(*l3));
	l3->dev = &pdev->dev;
	FUNC11(pdev, l3);

	/* Get mem resources */
	for (i = 0, res_idx = 0; i < l3->num_modules; i++) {
		struct resource	*res;

		if (l3->l3_base[i] == L3_BASE_IS_SUBMODULE) {
			/* First entry cannot be submodule */
			FUNC0(i == 0);
			l3->l3_base[i] = l3->l3_base[i - 1];
			continue;
		}
		res = FUNC10(pdev, IORESOURCE_MEM, res_idx);
		l3->l3_base[i] = FUNC4(&pdev->dev, res);
		if (FUNC1(l3->l3_base[i])) {
			FUNC3(l3->dev, "ioremap %d failed\n", i);
			return FUNC2(l3->l3_base[i]);
		}
		res_idx++;
	}

	/*
	 * Setup interrupt Handlers
	 */
	l3->debug_irq = FUNC9(pdev, 0);
	ret = FUNC6(l3->dev, l3->debug_irq, l3_interrupt_handler,
			       0x0, "l3-dbg-irq", l3);
	if (ret) {
		FUNC3(l3->dev, "request_irq failed for %d\n",
			l3->debug_irq);
		return ret;
	}

	l3->app_irq = FUNC9(pdev, 1);
	ret = FUNC6(l3->dev, l3->app_irq, l3_interrupt_handler,
			       0x0, "l3-app-irq", l3);
	if (ret)
		FUNC3(l3->dev, "request_irq failed for %d\n", l3->app_irq);

	return ret;
}