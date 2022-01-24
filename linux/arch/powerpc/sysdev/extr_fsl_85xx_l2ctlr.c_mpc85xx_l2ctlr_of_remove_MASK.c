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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2ctlr ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev)
{
	FUNC0(!l2ctlr);

	FUNC2(l2ctlr);
	FUNC3(dev);
	FUNC1(&dev->dev, "MPC85xx L2 controller unloaded\n");

	return 0;
}