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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  init; int /*<<< orphan*/  read; } ;
struct iproc_rng200_dev {TYPE_1__ rng; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct iproc_rng200_dev* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iproc_rng200_cleanup ; 
 int /*<<< orphan*/  iproc_rng200_init ; 
 int /*<<< orphan*/  iproc_rng200_read ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct iproc_rng200_dev *priv;
	struct resource *res;
	struct device *dev = &pdev->dev;
	int ret;

	priv = FUNC6(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	/* Map peripheral */
	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC2(dev, "failed to get rng resources\n");
		return -EINVAL;
	}

	priv->base = FUNC5(dev, res);
	if (FUNC0(priv->base)) {
		FUNC2(dev, "failed to remap rng regs\n");
		return FUNC1(priv->base);
	}

	priv->rng.name = "iproc-rng200",
	priv->rng.read = iproc_rng200_read,
	priv->rng.init = iproc_rng200_init,
	priv->rng.cleanup = iproc_rng200_cleanup,

	/* Register driver */
	ret = FUNC4(dev, &priv->rng);
	if (ret) {
		FUNC2(dev, "hwrng registration failed\n");
		return ret;
	}

	FUNC3(dev, "hwrng registered\n");

	return 0;
}