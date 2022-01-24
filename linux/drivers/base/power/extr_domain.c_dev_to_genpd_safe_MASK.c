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
struct generic_pm_domain {int dummy; } ;
struct TYPE_2__ {scalar_t__ runtime_suspend; } ;
struct device {struct device* pm_domain; TYPE_1__ ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ genpd_runtime_suspend ; 
 struct generic_pm_domain* FUNC1 (struct device*) ; 

__attribute__((used)) static struct generic_pm_domain *FUNC2(struct device *dev)
{
	if (FUNC0(dev) || FUNC0(dev->pm_domain))
		return NULL;

	/* A genpd's always have its ->runtime_suspend() callback assigned. */
	if (dev->pm_domain->ops.runtime_suspend == genpd_runtime_suspend)
		return FUNC1(dev->pm_domain);

	return NULL;
}