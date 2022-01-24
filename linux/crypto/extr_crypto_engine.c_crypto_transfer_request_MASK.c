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
struct crypto_engine {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  pump_requests; int /*<<< orphan*/  kworker; int /*<<< orphan*/  busy; int /*<<< orphan*/  queue; int /*<<< orphan*/  running; } ;
struct crypto_async_request {int dummy; } ;

/* Variables and functions */
 int ESHUTDOWN ; 
 int FUNC0 (int /*<<< orphan*/ *,struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct crypto_engine *engine,
				   struct crypto_async_request *req,
				   bool need_pump)
{
	unsigned long flags;
	int ret;

	FUNC2(&engine->queue_lock, flags);

	if (!engine->running) {
		FUNC3(&engine->queue_lock, flags);
		return -ESHUTDOWN;
	}

	ret = FUNC0(&engine->queue, req);

	if (!engine->busy && need_pump)
		FUNC1(engine->kworker, &engine->pump_requests);

	FUNC3(&engine->queue_lock, flags);
	return ret;
}