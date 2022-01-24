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
struct pmac_i2c_host_kw {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_1__ timeout_timer; } ;

/* Variables and functions */
 scalar_t__ KW_POLL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct pmac_i2c_host_kw* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct pmac_i2c_host_kw* host ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct pmac_i2c_host_kw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_isr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ state_idle ; 
 int /*<<< orphan*/  timeout_timer ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct pmac_i2c_host_kw *host = FUNC1(host, t, timeout_timer);
	unsigned long flags;

	FUNC4(&host->lock, flags);

	/*
	 * If the timer is pending, that means we raced with the
	 * irq, in which case we just return
	 */
	if (FUNC6(&host->timeout_timer))
		goto skip;

	FUNC2(host, FUNC3(reg_isr));
	if (host->state != state_idle) {
		host->timeout_timer.expires = jiffies + KW_POLL_TIMEOUT;
		FUNC0(&host->timeout_timer);
	}
 skip:
	FUNC5(&host->lock, flags);
}