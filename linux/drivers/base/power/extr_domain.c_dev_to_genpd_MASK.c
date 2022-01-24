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
struct generic_pm_domain {int dummy; } ;
struct device {int /*<<< orphan*/  pm_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct generic_pm_domain* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct generic_pm_domain* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct generic_pm_domain *FUNC3(struct device *dev)
{
	if (FUNC1(dev->pm_domain))
		return FUNC0(-EINVAL);

	return FUNC2(dev->pm_domain);
}