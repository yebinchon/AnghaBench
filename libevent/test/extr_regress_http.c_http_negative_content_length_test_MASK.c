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
struct evhttp {int dummy; } ;
struct basic_test_data {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVHTTP_REQ_GET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct evhttp_connection* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp*) ; 
 int FUNC5 (struct evhttp_connection*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  http_request_bad ; 
 struct evhttp* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ test_ok ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp_connection*) ; 

__attribute__((used)) static void
FUNC11(void *arg)
{
	struct basic_test_data *data = arg;
	ev_uint16_t port = 0;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req = NULL;
	struct evhttp *http = FUNC8(&port, data->base, 0);

	test_ok = 0;

	evcon = FUNC2(data->base, NULL, "127.0.0.1", port);
	FUNC10(evcon);

	/*
	 * At this point, we want to schedule a request to the HTTP
	 * server using our make request method.
	 */

	req = FUNC7(http_request_bad, data->base);

	/* Cause the response to have a negative content-length */
	FUNC1(FUNC6(req), "X-Negative", "makeitso");

	/* We give ownership of the request to the connection */
	if (FUNC5(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
		FUNC9("Couldn't make request");
	}

	FUNC0(data->base);

 end:
	if (evcon)
		FUNC3(evcon);
	if (http)
		FUNC4(http);
}