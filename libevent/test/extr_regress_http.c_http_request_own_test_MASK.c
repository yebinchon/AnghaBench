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
 int /*<<< orphan*/  FUNC5 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct evhttp_request*) ; 
 int /*<<< orphan*/  exit_base ; 
 int /*<<< orphan*/  http_request_no_action_done ; 
 struct evhttp* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int test_ok ; 
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
	exit_base = data->base;

	FUNC3(http);

	evcon = FUNC1(data->base, NULL, "127.0.0.1", port);
	FUNC10(evcon);

	req = FUNC6(http_request_no_action_done, NULL);

	if (FUNC4(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
		FUNC9("Couldn't make request");
	}
	FUNC7(req);

	FUNC0(data->base);

 end:
	if (evcon)
		FUNC2(evcon);
	if (req)
		FUNC5(req);

	test_ok = 1;
}