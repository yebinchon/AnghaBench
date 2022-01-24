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
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp {int /*<<< orphan*/  connections; } ;
struct basic_test_data {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVHTTP_REQ_GET ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 struct evhttp_connection* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp*) ; 
 int FUNC7 (struct evhttp_connection*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  http_request_empty_done ; 
 struct evhttp* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ test_ok ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct evhttp_connection*) ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
	struct basic_test_data *data = arg;
	ev_uint16_t port = 0;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req[2] = { NULL };
	struct evhttp *http = FUNC10(&port, data->base, 0);

	test_ok = 0;

	evcon = FUNC3(data->base, NULL, "127.0.0.1", port);
	FUNC12(evcon);

	/*
	 * At this point, we want to schedule two request to the HTTP
	 * server using our make request method.
	 */
	req[0] = FUNC9(http_request_empty_done, data->base);
	req[1] = FUNC9(http_request_empty_done, data->base);

	/* Add the information that we care about */
	FUNC2(FUNC8(req[0]), "Host", "somehost");
	FUNC2(FUNC8(req[0]), "Connection", "close");
	FUNC2(FUNC8(req[0]), "Empty", "itis");
	FUNC2(FUNC8(req[1]), "Host", "somehost");
	FUNC2(FUNC8(req[1]), "Connection", "close");
	FUNC2(FUNC8(req[1]), "Empty", "itis");

	/* We give ownership of the request to the connection */
	if (FUNC7(evcon, req[0], EVHTTP_REQ_GET, "/test") == -1) {
		FUNC11("couldn't make request");
	}
	if (FUNC7(evcon, req[1], EVHTTP_REQ_GET, "/test") == -1) {
		FUNC11("couldn't make request");
	}

	/*
	 * Tell libevent to free the connection when the request completes
	 *	We then set the evcon pointer to NULL since we don't want to free it
	 *	when this function ends.
	 */
	FUNC5(evcon);
	evcon = NULL;

	FUNC1(data->base);

	/* at this point, the http server should have no connection */
	FUNC12(FUNC0(&http->connections) == NULL);

 end:
	if (evcon)
		FUNC4(evcon);
	if (http)
		FUNC6(http);
}