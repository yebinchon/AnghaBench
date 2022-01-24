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
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  read; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  init; int /*<<< orphan*/  name; } ;
struct hisi_rng {TYPE_1__ rng; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct hisi_rng* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hisi_rng_cleanup ; 
 int /*<<< orphan*/  hisi_rng_init ; 
 int /*<<< orphan*/  hisi_rng_read ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct hisi_rng*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct hisi_rng *rng;
	struct resource *res;
	int ret;

	rng = FUNC5(&pdev->dev, sizeof(*rng), GFP_KERNEL);
	if (!rng)
		return -ENOMEM;

	FUNC7(pdev, rng);

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	rng->base = FUNC4(&pdev->dev, res);
	if (FUNC0(rng->base))
		return FUNC1(rng->base);

	rng->rng.name = pdev->name;
	rng->rng.init = hisi_rng_init;
	rng->rng.cleanup = hisi_rng_cleanup;
	rng->rng.read = hisi_rng_read;

	ret = FUNC3(&pdev->dev, &rng->rng);
	if (ret) {
		FUNC2(&pdev->dev, "failed to register hwrng\n");
		return ret;
	}

	return 0;
}