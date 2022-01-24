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
typedef  int u32 ;
struct idle_statedata {scalar_t__ mpu_state; scalar_t__ mpu_logic_state; int /*<<< orphan*/  cpu_state; } ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {size_t cpu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PM_OMAP4_ROM_SMP_BOOT_ERRATUM_GICD ; 
 scalar_t__ PWRDM_POWER_OFF ; 
 scalar_t__ PWRDM_POWER_ON ; 
 scalar_t__ PWRDM_POWER_RET ; 
 int /*<<< orphan*/  abort_barrier ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cpu_clkdm ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int* cpu_done ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/ * cpu_pd ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct cpuidle_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  mpu_pd ; 
 int /*<<< orphan*/  FUNC13 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct idle_statedata* state_ptr ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static int FUNC21(struct cpuidle_device *dev,
			struct cpuidle_driver *drv,
			int index)
{
	struct idle_statedata *cx = state_ptr + index;
	u32 mpuss_can_lose_context = 0;

	/*
	 * CPU0 has to wait and stay ON until CPU1 is OFF state.
	 * This is necessary to honour hardware recommondation
	 * of triggeing all the possible low power modes once CPU1 is
	 * out of coherency and in OFF mode.
	 */
	if (dev->cpu == 0 && FUNC9(1, cpu_online_mask)) {
		while (FUNC15(cpu_pd[1]) != PWRDM_POWER_OFF) {
			FUNC7();

			/*
			 * CPU1 could have already entered & exited idle
			 * without hitting off because of a wakeup
			 * or a failed attempt to hit off mode.  Check for
			 * that here, otherwise we could spin forever
			 * waiting for CPU1 off.
			 */
			if (cpu_done[1])
			    goto fail;

		}
	}

	mpuss_can_lose_context = (cx->mpu_state == PWRDM_POWER_RET) &&
				 (cx->mpu_logic_state == PWRDM_POWER_OFF);

	/* Enter broadcast mode for periodic timers */
	FUNC17();

	/* Enter broadcast mode for one-shot timers */
	FUNC18();

	/*
	 * Call idle CPU PM enter notifier chain so that
	 * VFP and per CPU interrupt context is saved.
	 */
	FUNC5();

	if (dev->cpu == 0) {
		FUNC16(mpu_pd, cx->mpu_logic_state);
		FUNC14(mpu_pd, cx->mpu_state);

		/*
		 * Call idle CPU cluster PM enter notifier chain
		 * to save GIC and wakeupgen context.
		 */
		if (mpuss_can_lose_context)
			FUNC3();
	}

	FUNC13(dev->cpu, cx->cpu_state);
	cpu_done[dev->cpu] = true;

	/* Wakeup CPU1 only if it is not offlined */
	if (dev->cpu == 0 && FUNC9(1, cpu_online_mask)) {

		if (FUNC0(PM_OMAP4_ROM_SMP_BOOT_ERRATUM_GICD) &&
		    mpuss_can_lose_context)
			FUNC10();

		FUNC2(cpu_clkdm[1]);
		FUNC14(cpu_pd[1], PWRDM_POWER_ON);
		FUNC1(cpu_clkdm[1]);

		if (FUNC0(PM_OMAP4_ROM_SMP_BOOT_ERRATUM_GICD) &&
		    mpuss_can_lose_context) {
			while (FUNC11()) {
				FUNC20(1);
				FUNC7();
			}
			FUNC12();
		}
	}

	/*
	 * Call idle CPU PM exit notifier chain to restore
	 * VFP and per CPU IRQ context.
	 */
	FUNC6();

	/*
	 * Call idle CPU cluster PM exit notifier chain
	 * to restore GIC and wakeupgen context.
	 */
	if (dev->cpu == 0 && mpuss_can_lose_context)
		FUNC4();

	FUNC19();

fail:
	FUNC8(dev, &abort_barrier);
	cpu_done[dev->cpu] = false;

	return index;
}