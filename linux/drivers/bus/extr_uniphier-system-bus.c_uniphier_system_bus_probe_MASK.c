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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct uniphier_system_bus_priv {struct device* dev; int /*<<< orphan*/  membase; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ OF_BAD_ADDR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct uniphier_system_bus_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct device*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct uniphier_system_bus_priv*) ; 
 int FUNC12 (struct uniphier_system_bus_priv*,int,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (struct uniphier_system_bus_priv*) ; 
 int FUNC14 (struct uniphier_system_bus_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct uniphier_system_bus_priv*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct uniphier_system_bus_priv *priv;
	const __be32 *ranges;
	u32 cells, addr, size;
	u64 paddr;
	int pna, bank, rlen, rone, ret;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->membase = FUNC5(pdev, 0);
	if (FUNC0(priv->membase))
		return FUNC1(priv->membase);

	priv->dev = dev;

	pna = FUNC7(dev->of_node);

	ret = FUNC9(dev->of_node, "#address-cells", &cells);
	if (ret) {
		FUNC3(dev, "failed to get #address-cells\n");
		return ret;
	}
	if (cells != 2) {
		FUNC3(dev, "#address-cells must be 2\n");
		return -EINVAL;
	}

	ret = FUNC9(dev->of_node, "#size-cells", &cells);
	if (ret) {
		FUNC3(dev, "failed to get #size-cells\n");
		return ret;
	}
	if (cells != 1) {
		FUNC3(dev, "#size-cells must be 1\n");
		return -EINVAL;
	}

	ranges = FUNC6(dev->of_node, "ranges", &rlen);
	if (!ranges) {
		FUNC3(dev, "failed to get ranges property\n");
		return -ENOENT;
	}

	rlen /= sizeof(*ranges);
	rone = pna + 2;

	for (; rlen >= rone; rlen -= rone) {
		bank = FUNC2(ranges++);
		addr = FUNC2(ranges++);
		paddr = FUNC10(dev->of_node, ranges);
		if (paddr == OF_BAD_ADDR)
			return -EINVAL;
		ranges += pna;
		size = FUNC2(ranges++);

		ret = FUNC12(priv, bank, addr,
						   paddr, size);
		if (ret)
			return ret;
	}

	ret = FUNC14(priv);
	if (ret)
		return ret;

	FUNC13(priv);

	FUNC15(priv);

	FUNC11(pdev, priv);

	/* Now, the bus is configured.  Populate platform_devices below it */
	return FUNC8(dev->of_node, NULL, dev);
}