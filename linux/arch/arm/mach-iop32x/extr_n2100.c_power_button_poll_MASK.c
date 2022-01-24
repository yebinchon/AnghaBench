#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  N2100_POWER_BUTTON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 TYPE_1__ power_button_poll_timer ; 

__attribute__((used)) static void FUNC3(struct timer_list *unused)
{
	if (FUNC2(N2100_POWER_BUTTON) == 0) {
		FUNC1();
		return;
	}

	power_button_poll_timer.expires = jiffies + (HZ / 10);
	FUNC0(&power_button_poll_timer);
}