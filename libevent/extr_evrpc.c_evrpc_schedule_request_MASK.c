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
struct evrpc_status {int /*<<< orphan*/  error; } ;
struct evrpc_request_wrapper {int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  reply; int /*<<< orphan*/  request; int /*<<< orphan*/  (* cb ) (struct evrpc_status*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  hook_meta; struct evhttp_request* req; struct evhttp_connection* evcon; int /*<<< orphan*/  (* request_marshal ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct evrpc_pool* pool; } ;
struct evrpc_pool {int /*<<< orphan*/  output_hooks; } ;
struct evhttp_request {int /*<<< orphan*/  output_buffer; } ;
struct evhttp_connection {int dummy; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
#define  EVRPC_CONTINUE 130 
#define  EVRPC_PAUSE 129 
 int /*<<< orphan*/  EVRPC_STATUS_ERR_UNSTARTED ; 
#define  EVRPC_TERMINATE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 struct evhttp_request* FUNC2 (int /*<<< orphan*/ ,struct evrpc_request_wrapper*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct evhttp_connection*) ; 
 int FUNC4 (struct evrpc_pool*,struct evrpc_request_wrapper*,int /*<<< orphan*/  (*) (struct evrpc_request_wrapper*,int const)) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct evrpc_request_wrapper*,struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evrpc_reply_done ; 
 int /*<<< orphan*/  FUNC6 (struct evrpc_request_wrapper*) ; 
 int /*<<< orphan*/  FUNC7 (struct evrpc_request_wrapper*,int const) ; 
 int /*<<< orphan*/  FUNC8 (struct evrpc_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct evrpc_status*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct evhttp_connection *connection,
    struct evrpc_request_wrapper *ctx)
{
	struct evhttp_request *req = NULL;
	struct evrpc_pool *pool = ctx->pool;
	struct evrpc_status status;

	if ((req = FUNC2(evrpc_reply_done, ctx)) == NULL)
		goto error;

	/* serialize the request data into the output buffer */
	ctx->request_marshal(req->output_buffer, ctx->request);

	/* we need to know the connection that we might have to abort */
	ctx->evcon = connection;

	/* if we get paused we also need to know the request */
	ctx->req = req;

	if (FUNC1(&pool->output_hooks) != NULL) {
		int hook_res;

		FUNC3(&ctx->hook_meta, connection);

		/* apply hooks to the outgoing request */
		hook_res = FUNC5(&pool->output_hooks,
		    ctx, req, req->output_buffer);

		switch (hook_res) {
		case EVRPC_TERMINATE:
			goto error;
		case EVRPC_PAUSE:
			/* we need to be explicitly resumed */
			if (FUNC4(pool, ctx,
				evrpc_schedule_request_closure) == -1)
				goto error;
			return (0);
		case EVRPC_CONTINUE:
			/* we can just continue */
			break;
		default:
			FUNC0(hook_res == EVRPC_TERMINATE ||
			    hook_res == EVRPC_CONTINUE ||
			    hook_res == EVRPC_PAUSE);
		}
	}

	FUNC7(ctx, EVRPC_CONTINUE);
	return (0);

error:
	FUNC8(&status, 0, sizeof(status));
	status.error = EVRPC_STATUS_ERR_UNSTARTED;
	(*ctx->cb)(&status, ctx->request, ctx->reply, ctx->cb_arg);
	FUNC6(ctx);
	return (-1);
}