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
struct timer {int running; int dead; int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (struct timer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct timer *timer) {
    FUNC1(&timer->lock);
    if (timer->running) {
        timer->running = false;
        timer->dead = true;
        FUNC2(timer->thread, SIGUSR1);
        FUNC3(&timer->lock);
    } else {
        FUNC3(&timer->lock);
        if (!timer->dead)
            FUNC0(timer);
    }
}