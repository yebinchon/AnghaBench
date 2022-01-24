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
struct TYPE_2__ {int base; } ;
struct scoop_dev {int /*<<< orphan*/  base; TYPE_1__ gpio; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scoop_dev*) ; 
 struct scoop_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct scoop_dev *sdev = FUNC3(pdev);

	if (!sdev)
		return -EINVAL;

	if (sdev->gpio.base != -1)
		FUNC0(&sdev->gpio);

	FUNC4(pdev, NULL);
	FUNC1(sdev->base);
	FUNC2(sdev);

	return 0;
}