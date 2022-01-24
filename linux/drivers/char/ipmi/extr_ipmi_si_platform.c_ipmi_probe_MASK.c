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
struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct platform_device*) ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	if (pdev->dev.of_node && FUNC1(pdev) == 0)
		return 0;

	if (FUNC0(pdev) == 0)
		return 0;

	return FUNC2(pdev);
}