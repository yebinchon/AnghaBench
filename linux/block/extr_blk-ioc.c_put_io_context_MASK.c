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
struct io_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  release_work; int /*<<< orphan*/  icq_list; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iocontext_cachep ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct io_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

void FUNC8(struct io_context *ioc)
{
	unsigned long flags;
	bool free_ioc = false;

	if (ioc == NULL)
		return;

	FUNC0(FUNC2(&ioc->refcount) <= 0);

	/*
	 * Releasing ioc requires reverse order double locking and we may
	 * already be holding a queue_lock.  Do it asynchronously from wq.
	 */
	if (FUNC1(&ioc->refcount)) {
		FUNC6(&ioc->lock, flags);
		if (!FUNC3(&ioc->icq_list))
			FUNC5(system_power_efficient_wq,
					&ioc->release_work);
		else
			free_ioc = true;
		FUNC7(&ioc->lock, flags);
	}

	if (free_ioc)
		FUNC4(iocontext_cachep, ioc);
}