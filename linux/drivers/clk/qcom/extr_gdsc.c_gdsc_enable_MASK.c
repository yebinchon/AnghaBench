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
 int AON_RESET ; 
 int CLAMP_IO ; 
 int /*<<< orphan*/  GDSC_ON ; 
 int HW_CTRL ; 
 int PWRSTS_OFF ; 
 scalar_t__ PWRSTS_ON ; 
 int SW_RESET ; 
 struct gdsc* FUNC0 (struct generic_pm_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct gdsc*) ; 
 int /*<<< orphan*/  FUNC2 (struct gdsc*) ; 
 int /*<<< orphan*/  FUNC3 (struct gdsc*) ; 
 int FUNC4 (struct gdsc*) ; 
 int /*<<< orphan*/  FUNC5 (struct gdsc*) ; 
 int FUNC6 (struct gdsc*,int) ; 
 int FUNC7 (struct gdsc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct generic_pm_domain *domain)
{
	struct gdsc *sc = FUNC0(domain);
	int ret;

	if (sc->pwrsts == PWRSTS_ON)
		return FUNC4(sc);

	if (sc->flags & SW_RESET) {
		FUNC1(sc);
		FUNC8(1);
		FUNC4(sc);
	}

	if (sc->flags & CLAMP_IO) {
		if (sc->flags & AON_RESET)
			FUNC2(sc);
		FUNC3(sc);
	}

	ret = FUNC7(sc, GDSC_ON);
	if (ret)
		return ret;

	if (sc->pwrsts & PWRSTS_OFF)
		FUNC5(sc);

	/*
	 * If clocks to this power domain were already on, they will take an
	 * additional 4 clock cycles to re-enable after the power domain is
	 * enabled. Delay to account for this. A delay is also needed to ensure
	 * clocks are not enabled within 400ns of enabling power to the
	 * memories.
	 */
	FUNC8(1);

	/* Turn on HW trigger mode if supported */
	if (sc->flags & HW_CTRL) {
		ret = FUNC6(sc, true);
		if (ret)
			return ret;
		/*
		 * Wait for the GDSC to go through a power down and
		 * up cycle.  In case a firmware ends up polling status
		 * bits for the gdsc, it might read an 'on' status before
		 * the GDSC can finish the power cycle.
		 * We wait 1us before returning to ensure the firmware
		 * can't immediately poll the status bits.
		 */
		FUNC8(1);
	}

	return 0;
}