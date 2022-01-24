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
struct evthread_lock_callbacks {scalar_t__ alloc; scalar_t__ lock_api_version; scalar_t__ supported_locktypes; scalar_t__ free; scalar_t__ lock; scalar_t__ unlock; } ;
typedef  int /*<<< orphan*/  evthread_lock_fns_ ;

/* Variables and functions */
 scalar_t__ event_debug_created_threadable_ctx_ ; 
 scalar_t__ event_debug_mode_on_ ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct evthread_lock_callbacks* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct evthread_lock_callbacks*,struct evthread_lock_callbacks const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct evthread_lock_callbacks*,int /*<<< orphan*/ ,int) ; 

int
FUNC6(const struct evthread_lock_callbacks *cbs)
{
	struct evthread_lock_callbacks *target = FUNC3();

#ifndef EVENT__DISABLE_DEBUG_MODE
	if (event_debug_mode_on_) {
		if (event_debug_created_threadable_ctx_) {
		    FUNC0(1, "evthread initialization must be called BEFORE anything else!");
		}
	}
#endif

	if (!cbs) {
		if (target->alloc)
			FUNC2("Trying to disable lock functions after "
			    "they have been set up will probaby not work.");
		FUNC5(target, 0, sizeof(evthread_lock_fns_));
		return 0;
	}
	if (target->alloc) {
		/* Uh oh; we already had locking callbacks set up.*/
		if (target->lock_api_version == cbs->lock_api_version &&
			target->supported_locktypes == cbs->supported_locktypes &&
			target->alloc == cbs->alloc &&
			target->free == cbs->free &&
			target->lock == cbs->lock &&
			target->unlock == cbs->unlock) {
			/* no change -- allow this. */
			return 0;
		}
		FUNC2("Can't change lock callbacks once they have been "
		    "initialized.");
		return -1;
	}
	if (cbs->alloc && cbs->free && cbs->lock && cbs->unlock) {
		FUNC4(target, cbs, sizeof(evthread_lock_fns_));
		return FUNC1(1);
	} else {
		return -1;
	}
}