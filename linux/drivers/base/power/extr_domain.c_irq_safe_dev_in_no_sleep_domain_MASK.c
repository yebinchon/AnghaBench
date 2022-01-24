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
struct generic_pm_domain {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct generic_pm_domain const*) ; 
 int /*<<< orphan*/  FUNC2 (struct generic_pm_domain const*) ; 
 scalar_t__ FUNC3 (struct device*) ; 

__attribute__((used)) static inline bool FUNC4(struct device *dev,
		const struct generic_pm_domain *genpd)
{
	bool ret;

	ret = FUNC3(dev) && !FUNC2(genpd);

	/*
	 * Warn once if an IRQ safe device is attached to a no sleep domain, as
	 * to indicate a suboptimal configuration for PM. For an always on
	 * domain this isn't case, thus don't warn.
	 */
	if (ret && !FUNC1(genpd))
		FUNC0(dev, "PM domain %s will not be powered off\n",
				genpd->name);

	return ret;
}