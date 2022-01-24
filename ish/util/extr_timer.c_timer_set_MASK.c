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
struct timespec {int dummy; } ;
struct timer_spec {int /*<<< orphan*/  value; int /*<<< orphan*/  interval; } ;
struct timer {int running; int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; int /*<<< orphan*/  interval; struct timespec start; int /*<<< orphan*/  end; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct timer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer_thread ; 
 int /*<<< orphan*/  FUNC4 (struct timespec,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct timespec FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct timespec) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct timer *timer, struct timer_spec spec, struct timer_spec *oldspec) {
    FUNC0(&timer->lock);
    struct timespec now = FUNC6();
    if (oldspec != NULL) {
        oldspec->value = FUNC7(timer->end, now);
        oldspec->interval = timer->interval;
    }

    timer->start = now;
    timer->end = FUNC4(timer->start, spec.value);
    timer->interval = spec.interval;
    if (!FUNC5(spec.value)) {
        if (!timer->running) {
            timer->running = true;
            FUNC1(&timer->thread, NULL, timer_thread, timer);
            FUNC2(timer->thread);
        }
    } else {
        if (timer->running) {
            timer->running = false;
            FUNC3(timer->thread, SIGUSR1);
        }
    }
    FUNC8(&timer->lock);
    return 0;
}