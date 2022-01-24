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
struct evrpc_request_wrapper {int dummy; } ;
struct evrpc_pool {int /*<<< orphan*/  requests; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * base; int /*<<< orphan*/  connections; } ;
struct evhttp_connection {int flags; int /*<<< orphan*/ * http_server; } ;

/* Variables and functions */
 int EVHTTP_CON_TIMEOUT_ADJUSTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct evrpc_request_wrapper* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct evhttp_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct evrpc_request_wrapper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_connection*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_connection*,struct evrpc_request_wrapper*) ; 
 int /*<<< orphan*/  next ; 

void
FUNC7(struct evrpc_pool *pool,
    struct evhttp_connection *connection)
{
	FUNC0(connection->http_server == NULL);
	FUNC2(&pool->connections, connection, next);

	/*
	 * associate an event base with this connection
	 */
	if (pool->base != NULL)
		FUNC4(connection, pool->base);

	/*
	 * unless a timeout was specifically set for a connection,
	 * the connection inherits the timeout from the pool.
	 */
	if (!(connection->flags & EVHTTP_CON_TIMEOUT_ADJUSTED))
		FUNC5(connection, pool->timeout);

	/*
	 * if we have any requests pending, schedule them with the new
	 * connections.
	 */

	if (FUNC1(&pool->requests) != NULL) {
		struct evrpc_request_wrapper *request =
		    FUNC1(&pool->requests);
		FUNC3(&pool->requests, request, next);
		FUNC6(connection, request);
	}
}