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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_ESERIES_TMIO_PCLR ; 
 int /*<<< orphan*/  GPIO_ESERIES_TMIO_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(struct platform_device *dev)
{
	/* Reset - bring SUSPEND high before PCLR */
	FUNC0(GPIO_ESERIES_TMIO_SUSPEND, 0);
	FUNC0(GPIO_ESERIES_TMIO_PCLR, 0);
	FUNC1(1);
	FUNC0(GPIO_ESERIES_TMIO_SUSPEND, 1);
	FUNC1(1);
	FUNC0(GPIO_ESERIES_TMIO_PCLR, 1);
	FUNC1(1);
	return 0;
}