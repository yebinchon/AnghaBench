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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  gcc_msm8974_desc ; 
 int /*<<< orphan*/  gcc_msm8974_match_table ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct of_device_id* FUNC1 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device*,char*,char*,int) ; 
 int FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	int ret;
	struct device *dev = &pdev->dev;
	bool pro;
	const struct of_device_id *id;

	id = FUNC1(gcc_msm8974_match_table, dev);
	if (!id)
		return -ENODEV;
	pro = !!(id->data);

	if (pro)
		FUNC0();

	ret = FUNC3(dev, "xo_board", "xo", 19200000);
	if (ret)
		return ret;

	ret = FUNC4(dev);
	if (ret)
		return ret;

	return FUNC2(pdev, &gcc_msm8974_desc);
}