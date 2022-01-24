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
struct evrpc_request_wrapper {int /*<<< orphan*/  output_hooks; int /*<<< orphan*/  input_hooks; int /*<<< orphan*/  connections; int /*<<< orphan*/  paused_requests; int /*<<< orphan*/  requests; } ;
struct evrpc_pool {int /*<<< orphan*/  output_hooks; int /*<<< orphan*/  input_hooks; int /*<<< orphan*/  connections; int /*<<< orphan*/  paused_requests; int /*<<< orphan*/  requests; } ;
struct evrpc_hook_ctx {int /*<<< orphan*/  output_hooks; int /*<<< orphan*/  input_hooks; int /*<<< orphan*/  connections; int /*<<< orphan*/  paused_requests; int /*<<< orphan*/  requests; } ;
struct evrpc_hook {int dummy; } ;
struct evhttp_connection {int /*<<< orphan*/  output_hooks; int /*<<< orphan*/  input_hooks; int /*<<< orphan*/  connections; int /*<<< orphan*/  paused_requests; int /*<<< orphan*/  requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVRPC_INPUT ; 
 int /*<<< orphan*/  EVRPC_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct evrpc_request_wrapper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evrpc_request_wrapper*) ; 
 int FUNC4 (struct evrpc_request_wrapper*,int /*<<< orphan*/ ,struct evrpc_hook*) ; 
 int /*<<< orphan*/  FUNC5 (struct evrpc_request_wrapper*) ; 
 int /*<<< orphan*/  FUNC6 (struct evrpc_request_wrapper*) ; 
 int /*<<< orphan*/  next ; 

void
FUNC7(struct evrpc_pool *pool)
{
	struct evhttp_connection *connection;
	struct evrpc_request_wrapper *request;
	struct evrpc_hook_ctx *pause;
	struct evrpc_hook *hook;
	int r;

	while ((request = FUNC1(&pool->requests)) != NULL) {
		FUNC2(&pool->requests, request, next);
		FUNC5(request);
	}

	while ((pause = FUNC1(&pool->paused_requests)) != NULL) {
		FUNC2(&pool->paused_requests, pause, next);
		FUNC6(pause);
	}

	while ((connection = FUNC1(&pool->connections)) != NULL) {
		FUNC2(&pool->connections, connection, next);
		FUNC3(connection);
	}

	while ((hook = FUNC1(&pool->input_hooks)) != NULL) {
		r = FUNC4(pool, EVRPC_INPUT, hook);
		FUNC0(r);
	}

	while ((hook = FUNC1(&pool->output_hooks)) != NULL) {
		r = FUNC4(pool, EVRPC_OUTPUT, hook);
		FUNC0(r);
	}

	FUNC6(pool);
}