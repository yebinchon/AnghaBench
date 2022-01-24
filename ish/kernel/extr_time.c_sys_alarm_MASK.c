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
typedef  int uint_t ;
struct TYPE_3__ {int tv_sec; int tv_nsec; } ;
struct timer_spec {TYPE_1__ value; } ;
struct tgroup {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {struct tgroup* group; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL_ ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_2__* current ; 
 int FUNC1 (struct tgroup*,int /*<<< orphan*/ ,struct timer_spec,struct timer_spec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

uint_t FUNC5(uint_t seconds) {
    FUNC0("alarm(%d)", seconds);
    struct timer_spec spec = {
        .value.tv_sec = seconds,
    };
    struct timer_spec old_spec;

    struct tgroup *group = current->group;
    FUNC2(&group->lock);
    int err = FUNC1(group, ITIMER_REAL_, spec, &old_spec);
    FUNC4(&group->lock);
    if (err < 0)
        return err;

    // Round up, and make sure to not return 0 if old_spec is > 0
    seconds = old_spec.value.tv_sec;
    if (old_spec.value.tv_nsec >= 500000000)
        seconds++;
    if (seconds == 0 && !FUNC3(old_spec.value))
        seconds = 1;
    return seconds;
}