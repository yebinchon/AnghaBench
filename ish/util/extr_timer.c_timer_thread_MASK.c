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
struct timer {int running; int /*<<< orphan*/  lock; scalar_t__ dead; struct timespec interval; int /*<<< orphan*/  start; int /*<<< orphan*/  end; int /*<<< orphan*/  data; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct timespec) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct timespec) ; 
 struct timespec FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC9(void *param) {
    struct timer *timer = param;
    FUNC1(&timer->lock);
    while (true) {
        struct timespec remaining = FUNC7(timer->end, FUNC5());
        while (timer->running && FUNC6(remaining)) {
            FUNC8(&timer->lock);
            FUNC2(&remaining, NULL);
            FUNC1(&timer->lock);
            remaining = FUNC7(timer->end, FUNC5());
        }
        if (timer->running)
            timer->callback(timer->data);
        if (FUNC6(timer->interval)) {
            timer->start = timer->end;
            timer->end = FUNC4(timer->start, timer->interval);
        } else {
            break;
        }
    }
    timer->running = false;
    if (timer->dead)
        FUNC0(timer);
    else
        FUNC8(&timer->lock);
    return NULL;
}