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
 struct evhttp_connection* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp*) ; 
 int FUNC4 (struct evhttp_connection*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 struct evhttp_request* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_request*,int /*<<< orphan*/ ) ; 
 struct evhttp* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  http_stream_in_cancel_chunk ; 
 int /*<<< orphan*/  http_stream_in_cancel_done ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_connection*) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct basic_test_data *data = arg;
	struct evhttp_connection *evcon;
	struct evhttp_request *req = NULL;
	ev_uint16_t port = 0;
	struct evhttp *http = FUNC7(&port, data->base, 0);

	evcon = FUNC1(data->base, NULL, "127.0.0.1", port);
	FUNC9(evcon);

	req = FUNC5(http_stream_in_cancel_done, data->base);
	FUNC6(req, http_stream_in_cancel_chunk);

	/* We give ownership of the request to the connection */
	if (FUNC4(evcon, req, EVHTTP_REQ_GET, "/chunked") == -1) {
		FUNC8("Couldn't make request");
	}

	FUNC0(data->base);

	test_ok = 1;
 end:
	FUNC2(evcon);
	FUNC3(http);

}