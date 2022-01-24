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
struct gdsc {scalar_t__ pwrsts; int flags; } ;

/* Variables and functions */
 int CLAMP_IO ; 
 int /*<<< orphan*/  GDSC_OFF ; 
 int /*<<< orphan*/  GDSC_ON ; 
 int HW_CTRL ; 
 int PWRSTS_OFF ; 
 scalar_t__ PWRSTS_ON ; 
 struct gdsc* FUNC0 (struct generic_pm_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct gdsc*) ; 
 int FUNC2 (struct gdsc*) ; 
 int /*<<< orphan*/  FUNC3 (struct gdsc*) ; 
 int FUNC4 (struct gdsc*,int) ; 
 int FUNC5 (struct gdsc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct gdsc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct generic_pm_domain *domain)
{
	struct gdsc *sc = FUNC0(domain);
	int ret;

	if (sc->pwrsts == PWRSTS_ON)
		return FUNC2(sc);

	/* Turn off HW trigger mode if supported */
	if (sc->flags & HW_CTRL) {
		ret = FUNC4(sc, false);
		if (ret < 0)
			return ret;
		/*
		 * Wait for the GDSC to go through a power down and
		 * up cycle.  In case we end up polling status
		 * bits for the gdsc before the power cycle is completed
		 * it might read an 'on' status wrongly.
		 */
		FUNC7(1);

		ret = FUNC5(sc, GDSC_ON);
		if (ret)
			return ret;
	}

	if (sc->pwrsts & PWRSTS_OFF)
		FUNC3(sc);

	ret = FUNC6(sc, GDSC_OFF);
	if (ret)
		return ret;

	if (sc->flags & CLAMP_IO)
		FUNC1(sc);

	return 0;
}