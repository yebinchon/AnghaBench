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
struct evwatch {size_t type; TYPE_1__* base; } ;
struct TYPE_3__ {int /*<<< orphan*/ * watchers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct evwatch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evwatch*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  th_base_lock ; 

void
FUNC4(struct evwatch *watcher)
{
	FUNC0(watcher->base, th_base_lock);
	FUNC2(&watcher->base->watchers[watcher->type], watcher, next);
	FUNC1(watcher->base, th_base_lock);
	FUNC3(watcher);
}