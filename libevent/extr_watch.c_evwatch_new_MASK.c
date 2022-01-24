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
typedef  union evwatch_cb {int dummy; } evwatch_cb ;
struct evwatch {unsigned int type; void* arg; union evwatch_cb callback; struct event_base* base; } ;
struct event_base {int /*<<< orphan*/ * watchers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct evwatch*,int /*<<< orphan*/ ) ; 
 struct evwatch* FUNC3 (int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  th_base_lock ; 

__attribute__((used)) static inline struct evwatch *
FUNC4(struct event_base *base, union evwatch_cb callback, void *arg, unsigned type)
{
	struct evwatch *watcher = FUNC3(sizeof(struct evwatch));
	if (!watcher)
		return NULL;
	watcher->base = base;
	watcher->type = type;
	watcher->callback = callback;
	watcher->arg = arg;
	FUNC0(base, th_base_lock);
	FUNC2(&base->watchers[type], watcher, next);
	FUNC1(base, th_base_lock);
	return watcher;
}