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
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  expires; } ;
struct bt_bmc {TYPE_1__ poll_timer; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct bt_bmc* bt_bmc ; 
 struct bt_bmc* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,void (*) (struct timer_list*)) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct bt_bmc *bt_bmc = FUNC1(bt_bmc, t, poll_timer);

	bt_bmc->poll_timer.expires += FUNC2(500);
	FUNC3(&bt_bmc->queue);
	FUNC0(&bt_bmc->poll_timer);
}