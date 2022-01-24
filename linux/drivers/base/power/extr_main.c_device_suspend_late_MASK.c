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

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  async_suspend_late ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pm_transition ; 

__attribute__((used)) static int FUNC2(struct device *dev)
{
	if (FUNC1(dev, async_suspend_late))
		return 0;

	return FUNC0(dev, pm_transition, false);
}