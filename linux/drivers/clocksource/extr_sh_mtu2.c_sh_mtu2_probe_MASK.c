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
struct sh_mtu2_device {scalar_t__ has_clockevent; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mtu2_device*) ; 
 struct sh_mtu2_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct sh_mtu2_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sh_mtu2_device*,struct platform_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct sh_mtu2_device *mtu = FUNC4(pdev);
	int ret;

	if (!FUNC1(pdev)) {
		FUNC8(&pdev->dev);
		FUNC5(&pdev->dev);
	}

	if (mtu) {
		FUNC0(&pdev->dev, "kept as earlytimer\n");
		goto out;
	}

	mtu = FUNC3(sizeof(*mtu), GFP_KERNEL);
	if (mtu == NULL)
		return -ENOMEM;

	ret = FUNC9(mtu, pdev);
	if (ret) {
		FUNC2(mtu);
		FUNC6(&pdev->dev);
		return ret;
	}
	if (FUNC1(pdev))
		return 0;

 out:
	if (mtu->has_clockevent)
		FUNC7(&pdev->dev);
	else
		FUNC6(&pdev->dev);

	return 0;
}