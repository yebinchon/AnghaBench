#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ab8500 {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct ab8500* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ab8500*) ; 
 scalar_t__ FUNC4 (struct ab8500*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct ab8500 *parent = FUNC2(pdev->dev.parent);
	int ret;

	if (FUNC3(parent) || FUNC4(parent)) {
		ret = FUNC0(&pdev->dev);
	} else {
		FUNC1(&pdev->dev, "non supported plf id\n");
		return -ENODEV;
	}

	return ret;
}