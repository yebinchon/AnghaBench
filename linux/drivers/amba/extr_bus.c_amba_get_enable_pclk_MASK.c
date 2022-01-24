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
struct amba_device {int /*<<< orphan*/  pclk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct amba_device *pcdev)
{
	int ret;

	pcdev->pclk = FUNC2(&pcdev->dev, "apb_pclk");
	if (FUNC0(pcdev->pclk))
		return FUNC1(pcdev->pclk);

	ret = FUNC3(pcdev->pclk);
	if (ret)
		FUNC4(pcdev->pclk);

	return ret;
}