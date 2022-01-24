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
typedef  int /*<<< orphan*/  timer_callback_t ;
struct timer_spec {int dummy; } ;
struct timer {int dummy; } ;
struct tgroup {struct timer* timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct timer*) ; 
 int ITIMER_REAL_ ; 
 int FUNC2 (struct timer*) ; 
 int _EINVAL ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ itimer_notify ; 
 struct timer* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct timer*,struct timer_spec,struct timer_spec*) ; 

__attribute__((used)) static int FUNC5(struct tgroup *group, int which, struct timer_spec spec, struct timer_spec *old_spec) {
    if (which != ITIMER_REAL_) {
        FUNC0("unimplemented setitimer %d", which);
        return _EINVAL;
    }

    if (!group->timer) {
        struct timer *timer = FUNC3((timer_callback_t) itimer_notify, current);
        if (FUNC1(timer))
            return FUNC2(timer);
        group->timer = timer;
    }

    return FUNC4(group->timer, spec, old_spec);
}