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
typedef  int u32 ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  read; int /*<<< orphan*/  name; } ;
struct pic32_rng {scalar_t__ clk; TYPE_1__ rng; scalar_t__ base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ RNGCON ; 
 int TRNGEN ; 
 int TRNGMOD ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct pic32_rng* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  pic32_rng_read ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct pic32_rng*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct pic32_rng *priv;
	struct resource *res;
	u32 v;
	int ret;

	priv = FUNC6(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC5(&pdev->dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	priv->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(priv->clk))
		return FUNC1(priv->clk);

	ret = FUNC3(priv->clk);
	if (ret)
		return ret;

	/* enable TRNG in enhanced mode */
	v = TRNGEN | TRNGMOD;
	FUNC10(v, priv->base + RNGCON);

	priv->rng.name = pdev->name;
	priv->rng.read = pic32_rng_read;

	ret = FUNC7(&priv->rng);
	if (ret)
		goto err_register;

	FUNC9(pdev, priv);

	return 0;

err_register:
	FUNC2(priv->clk);
	return ret;
}