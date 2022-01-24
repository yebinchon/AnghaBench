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

/* Variables and functions */
 int FUNC0 (struct generic_pm_domain*,struct generic_pm_domain*) ; 
 int /*<<< orphan*/  gpd_list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct generic_pm_domain *genpd,
			   struct generic_pm_domain *subdomain)
{
	int ret;

	FUNC1(&gpd_list_lock);
	ret = FUNC0(genpd, subdomain);
	FUNC2(&gpd_list_lock);

	return ret;
}