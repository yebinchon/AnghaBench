#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  suspend_state_t ;
struct TYPE_6__ {int suspended; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct TYPE_5__ {TYPE_1__ data; } ;

/* Variables and functions */
 scalar_t__ AT91_PM_BACKUP ; 
 int /*<<< orphan*/  at91_pm_suspend_in_sram ; 
 int /*<<< orphan*/  at91_pm_suspend_in_sram_sz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  at91_suspend_sram_fn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__* pm_bu ; 
 TYPE_2__ soc_pm ; 

__attribute__((used)) static void FUNC4(suspend_state_t state)
{
	if (soc_pm.data.mode == AT91_PM_BACKUP) {
		pm_bu->suspended = 1;

		FUNC1(0, at91_suspend_finish);

		/* The SRAM is lost between suspend cycles */
		at91_suspend_sram_fn = FUNC2(at91_suspend_sram_fn,
					     &at91_pm_suspend_in_sram,
					     at91_pm_suspend_in_sram_sz);
	} else {
		FUNC0(0);
	}

	FUNC3();
}