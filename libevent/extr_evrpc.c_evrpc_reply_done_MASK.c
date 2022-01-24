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
struct evrpc_request_wrapper {int /*<<< orphan*/  evcon; int /*<<< orphan*/  hook_meta; struct evhttp_request* req; int /*<<< orphan*/  ev_timeout; struct evrpc_pool* pool; } ;
struct evrpc_pool {int /*<<< orphan*/  input_hooks; } ;
struct evhttp_request {int /*<<< orphan*/  input_buffer; } ;

/* Variables and functions */
#define  EVRPC_CONTINUE 130 
#define  EVRPC_PAUSE 129 
#define  EVRPC_TERMINATE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct evrpc_pool*,struct evrpc_request_wrapper*,int /*<<< orphan*/  (*) (struct evrpc_request_wrapper*,int)) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct evrpc_request_wrapper*,struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct evrpc_request_wrapper*,int) ; 

__attribute__((used)) static void
FUNC8(struct evhttp_request *req, void *arg)
{
	struct evrpc_request_wrapper *ctx = arg;
	struct evrpc_pool *pool = ctx->pool;
	int hook_res = EVRPC_CONTINUE;

	/* cancel any timeout we might have scheduled */
	FUNC2(&ctx->ev_timeout);

	ctx->req = req;

	/* we need to get the reply now */
	if (req == NULL) {
		FUNC7(ctx, EVRPC_CONTINUE);
		return;
	}

	if (FUNC1(&pool->input_hooks) != NULL) {
		FUNC4(&ctx->hook_meta, ctx->evcon);

		/* apply hooks to the incoming request */
		hook_res = FUNC6(&pool->input_hooks,
		    ctx, req, req->input_buffer);

		switch (hook_res) {
		case EVRPC_TERMINATE:
		case EVRPC_CONTINUE:
			break;
		case EVRPC_PAUSE:
			/*
			 * if we get paused we also need to know the
			 * request.  unfortunately, the underlying
			 * layer is going to free it.  we need to
			 * request ownership explicitly
			 */
			FUNC3(req);

			FUNC5(pool, ctx,
			    evrpc_reply_done_closure);
			return;
		default:
			FUNC0(hook_res == EVRPC_TERMINATE ||
			    hook_res == EVRPC_CONTINUE ||
			    hook_res == EVRPC_PAUSE);
		}
	}

	FUNC7(ctx, hook_res);

	/* http request is being freed by underlying layer */
}