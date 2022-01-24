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
struct generic_pm_domain {unsigned int state_idx; int (* power_off ) (struct generic_pm_domain*) ;int max_off_time_changed; int /*<<< orphan*/  name; TYPE_1__* states; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {scalar_t__ power_off_latency_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC4 (struct generic_pm_domain*) ; 
 int FUNC5 (struct generic_pm_domain*) ; 

__attribute__((used)) static int FUNC6(struct generic_pm_domain *genpd, bool timed)
{
	unsigned int state_idx = genpd->state_idx;
	ktime_t time_start;
	s64 elapsed_ns;
	int ret;

	if (!genpd->power_off)
		return 0;

	if (!timed)
		return genpd->power_off(genpd);

	time_start = FUNC0();
	ret = genpd->power_off(genpd);
	if (ret)
		return ret;

	elapsed_ns = FUNC2(FUNC1(FUNC0(), time_start));
	if (elapsed_ns <= genpd->states[state_idx].power_off_latency_ns)
		return 0;

	genpd->states[state_idx].power_off_latency_ns = elapsed_ns;
	genpd->max_off_time_changed = true;
	FUNC3("%s: Power-%s latency exceeded, new value %lld ns\n",
		 genpd->name, "off", elapsed_ns);

	return 0;
}