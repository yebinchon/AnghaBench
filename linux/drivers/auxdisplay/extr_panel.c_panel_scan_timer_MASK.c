#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct TYPE_3__ {int /*<<< orphan*/  charlcd; scalar_t__ initialized; scalar_t__ enabled; } ;

/* Variables and functions */
 scalar_t__ INPUT_POLL_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inputs_stable ; 
 scalar_t__ jiffies ; 
 TYPE_2__ keypad ; 
 scalar_t__ keypad_initialized ; 
 scalar_t__ keypressed ; 
 TYPE_1__ lcd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ phys_curr ; 
 scalar_t__ phys_prev ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  pprt_lock ; 
 int /*<<< orphan*/  scan_timer ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct timer_list *unused)
{
	if (keypad.enabled && keypad_initialized) {
		if (FUNC4(&pprt_lock)) {
			FUNC3();

			/* no need for the parport anymore */
			FUNC5(&pprt_lock);
		}

		if (!inputs_stable || phys_curr != phys_prev)
			FUNC2();
	}

	if (keypressed && lcd.enabled && lcd.initialized)
		FUNC0(lcd.charlcd);

	FUNC1(&scan_timer, jiffies + INPUT_POLL_TIME);
}