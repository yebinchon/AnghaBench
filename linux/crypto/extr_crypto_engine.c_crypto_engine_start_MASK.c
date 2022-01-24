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
struct crypto_engine {int running; int /*<<< orphan*/  pump_requests; int /*<<< orphan*/  kworker; int /*<<< orphan*/  queue_lock; scalar_t__ busy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct crypto_engine *engine)
{
	unsigned long flags;

	FUNC1(&engine->queue_lock, flags);

	if (engine->running || engine->busy) {
		FUNC2(&engine->queue_lock, flags);
		return -EBUSY;
	}

	engine->running = true;
	FUNC2(&engine->queue_lock, flags);

	FUNC0(engine->kworker, &engine->pump_requests);

	return 0;
}