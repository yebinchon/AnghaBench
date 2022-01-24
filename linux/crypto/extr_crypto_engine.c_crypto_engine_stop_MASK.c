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
struct crypto_engine {int running; int /*<<< orphan*/  dev; int /*<<< orphan*/  queue_lock; scalar_t__ busy; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct crypto_engine *engine)
{
	unsigned long flags;
	unsigned int limit = 500;
	int ret = 0;

	FUNC3(&engine->queue_lock, flags);

	/*
	 * If the engine queue is not empty or the engine is on busy state,
	 * we need to wait for a while to pump the requests of engine queue.
	 */
	while ((FUNC0(&engine->queue) || engine->busy) && limit--) {
		FUNC4(&engine->queue_lock, flags);
		FUNC2(20);
		FUNC3(&engine->queue_lock, flags);
	}

	if (FUNC0(&engine->queue) || engine->busy)
		ret = -EBUSY;
	else
		engine->running = false;

	FUNC4(&engine->queue_lock, flags);

	if (ret)
		FUNC1(engine->dev, "could not stop engine\n");

	return ret;
}