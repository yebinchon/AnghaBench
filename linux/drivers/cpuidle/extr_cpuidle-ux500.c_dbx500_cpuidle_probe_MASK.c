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
 int /*<<< orphan*/  ABB ; 
 int /*<<< orphan*/  ARM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ux500_idle_driver ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	/* Configure wake up reasons */
	FUNC2(FUNC0(ARM) | FUNC0(RTC) |
			     FUNC0(ABB));

	return FUNC1(&ux500_idle_driver, NULL);
}