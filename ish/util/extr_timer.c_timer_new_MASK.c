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
struct timer {int running; int dead; int /*<<< orphan*/  lock; void* data; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct timer* FUNC1 (int) ; 

struct timer *FUNC2(timer_callback_t callback, void *data) {
    struct timer *timer = FUNC1(sizeof(struct timer));
    timer->callback = callback;
    timer->data = data;
    timer->running = false;
    timer->dead = false;
    FUNC0(&timer->lock);
    return timer;
}