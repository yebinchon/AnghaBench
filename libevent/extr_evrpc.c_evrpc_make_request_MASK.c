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
struct evrpc_request_wrapper {int /*<<< orphan*/  ev_timeout; struct evrpc_pool* pool; } ;
struct evrpc_pool {int /*<<< orphan*/  requests; int /*<<< orphan*/  connections; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct evrpc_request_wrapper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evrpc_pool*) ; 
 int /*<<< orphan*/  evrpc_request_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct evrpc_request_wrapper*) ; 
 int /*<<< orphan*/  next ; 

int
FUNC5(struct evrpc_request_wrapper *ctx)
{
	struct evrpc_pool *pool = ctx->pool;

	/* initialize the event structure for this rpc */
	FUNC4(&ctx->ev_timeout, pool->base, evrpc_request_timeout, ctx);

	/* we better have some available connections on the pool */
	FUNC0(FUNC1(&pool->connections) != NULL);

	/*
	 * if no connection is available, we queue the request on the pool,
	 * the next time a connection is empty, the rpc will be send on that.
	 */
	FUNC2(&pool->requests, ctx, next);

	FUNC3(pool);

	return (0);
}