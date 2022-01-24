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
struct device {int dummy; } ;
struct davinci_lpsc_clk {int /*<<< orphan*/ * genpd_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 struct davinci_lpsc_clk* FUNC2 (struct generic_pm_domain*) ; 

__attribute__((used)) static void FUNC3(struct generic_pm_domain *pm_domain,
					 struct device *dev)
{
	struct davinci_lpsc_clk *lpsc = FUNC2(pm_domain);

	FUNC1(dev, lpsc->genpd_clk);
	FUNC0(dev);

	lpsc->genpd_clk = NULL;
}