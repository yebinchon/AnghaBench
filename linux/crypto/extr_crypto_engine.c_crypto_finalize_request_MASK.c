#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* unprepare_request ) (struct crypto_engine*,struct crypto_async_request*) ;} ;
struct crypto_engine_ctx {TYPE_1__ op; } ;
struct crypto_engine {int cur_req_prepared; int /*<<< orphan*/  pump_requests; int /*<<< orphan*/  kworker; int /*<<< orphan*/  queue_lock; struct crypto_async_request* cur_req; int /*<<< orphan*/  dev; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int) ;int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 struct crypto_engine_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct crypto_engine*,struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_async_request*,int) ; 

__attribute__((used)) static void FUNC7(struct crypto_engine *engine,
			     struct crypto_async_request *req, int err)
{
	unsigned long flags;
	bool finalize_cur_req = false;
	int ret;
	struct crypto_engine_ctx *enginectx;

	FUNC3(&engine->queue_lock, flags);
	if (engine->cur_req == req)
		finalize_cur_req = true;
	FUNC4(&engine->queue_lock, flags);

	if (finalize_cur_req) {
		enginectx = FUNC0(req->tfm);
		if (engine->cur_req_prepared &&
		    enginectx->op.unprepare_request) {
			ret = enginectx->op.unprepare_request(engine, req);
			if (ret)
				FUNC1(engine->dev, "failed to unprepare request\n");
		}
		FUNC3(&engine->queue_lock, flags);
		engine->cur_req = NULL;
		engine->cur_req_prepared = false;
		FUNC4(&engine->queue_lock, flags);
	}

	req->complete(req, err);

	FUNC2(engine->kworker, &engine->pump_requests);
}