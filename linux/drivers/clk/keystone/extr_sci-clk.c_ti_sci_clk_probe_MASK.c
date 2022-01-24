#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  clk_ops; } ;
struct ti_sci_handle {TYPE_1__ ops; } ;
struct sci_clk_provider {struct device* dev; int /*<<< orphan*/ * ops; struct ti_sci_handle const* sci; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct ti_sci_handle const*) ; 
 int FUNC1 (struct ti_sci_handle const*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct sci_clk_provider* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct ti_sci_handle* FUNC4 (struct device*) ; 
 int FUNC5 (struct device_node*,int /*<<< orphan*/ ,struct sci_clk_provider*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  sci_clk_get ; 
 int FUNC7 (struct sci_clk_provider*) ; 
 int FUNC8 (struct sci_clk_provider*) ; 
 int FUNC9 (struct sci_clk_provider*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct sci_clk_provider *provider;
	const struct ti_sci_handle *handle;
	int ret;

	handle = FUNC4(dev);
	if (FUNC0(handle))
		return FUNC1(handle);

	provider = FUNC3(dev, sizeof(*provider), GFP_KERNEL);
	if (!provider)
		return -ENOMEM;

	provider->sci = handle;
	provider->ops = &handle->ops.clk_ops;
	provider->dev = dev;

#ifdef CONFIG_TI_SCI_CLK_PROBE_FROM_FW
	ret = ti_sci_scan_clocks_from_fw(provider);
	if (ret) {
		dev_err(dev, "scan clocks from FW failed: %d\n", ret);
		return ret;
	}
#else
	ret = FUNC8(provider);
	if (ret) {
		FUNC2(dev, "scan clocks from DT failed: %d\n", ret);
		return ret;
	}
#endif

	ret = FUNC7(provider);
	if (ret) {
		FUNC6("ti-sci-init-clocks failed.\n");
		return ret;
	}

	return FUNC5(np, sci_clk_get, provider);
}