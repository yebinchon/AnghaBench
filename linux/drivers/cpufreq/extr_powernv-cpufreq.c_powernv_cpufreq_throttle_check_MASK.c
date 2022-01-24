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
typedef  int /*<<< orphan*/  u8 ;
struct chip {int throttled; size_t throttle_reason; int /*<<< orphan*/  id; int /*<<< orphan*/  throttle_turbo; int /*<<< orphan*/  throttle_sub_turbo; } ;
struct TYPE_2__ {unsigned int max; unsigned int nominal; } ;

/* Variables and functions */
 unsigned long PMSR_PSAFE_ENABLE ; 
 unsigned long PMSR_SPR_EM_DISABLE ; 
 int /*<<< orphan*/  SPRN_PMSR ; 
 int /*<<< orphan*/  chip_info ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 TYPE_1__ powernv_pstate_info ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 () ; 
 struct chip* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * throttle_reason ; 
 int throttled ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void *data)
{
	struct chip *chip;
	unsigned int cpu = FUNC7();
	unsigned long pmsr;
	u8 pmsr_pmax;
	unsigned int pmsr_pmax_idx;

	pmsr = FUNC1(SPRN_PMSR);
	chip = FUNC8(chip_info);

	/* Check for Pmax Capping */
	pmsr_pmax = FUNC0(pmsr);
	pmsr_pmax_idx = FUNC6(pmsr_pmax);
	if (pmsr_pmax_idx != powernv_pstate_info.max) {
		if (chip->throttled)
			goto next;
		chip->throttled = true;
		if (pmsr_pmax_idx > powernv_pstate_info.nominal) {
			FUNC5("CPU %d on Chip %u has Pmax(0x%x) reduced below that of nominal frequency(0x%x)\n",
				     cpu, chip->id, pmsr_pmax,
				     FUNC2(powernv_pstate_info.nominal));
			chip->throttle_sub_turbo++;
		} else {
			chip->throttle_turbo++;
		}
		FUNC9(chip->id,
				      throttle_reason[chip->throttle_reason],
				      pmsr_pmax);
	} else if (chip->throttled) {
		chip->throttled = false;
		FUNC9(chip->id,
				      throttle_reason[chip->throttle_reason],
				      pmsr_pmax);
	}

	/* Check if Psafe_mode_active is set in PMSR. */
next:
	if (pmsr & PMSR_PSAFE_ENABLE) {
		throttled = true;
		FUNC3("Pstate set to safe frequency\n");
	}

	/* Check if SPR_EM_DISABLE is set in PMSR */
	if (pmsr & PMSR_SPR_EM_DISABLE) {
		throttled = true;
		FUNC3("Frequency Control disabled from OS\n");
	}

	if (throttled) {
		FUNC3("PMSR = %16lx\n", pmsr);
		FUNC4("CPU Frequency could be throttled\n");
	}
}