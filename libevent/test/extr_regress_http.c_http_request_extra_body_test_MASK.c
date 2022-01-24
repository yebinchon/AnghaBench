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
struct evhttp {int dummy; } ;
struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 scalar_t__ FUNC3 (struct evbuffer*) ; 
 struct evbuffer* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp*) ; 
 int /*<<< orphan*/  exit_base ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 struct evhttp* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  http_timeout_cb ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct basic_test_data *data = arg;
	struct bufferevent *bev = NULL;
	ev_uint16_t port = 0;
	int i;
	struct evhttp *http =
		FUNC8(&port, data->base, 0, http_timeout_cb, NULL);
	struct evbuffer *body = NULL;

	exit_base = data->base;
	test_ok = 0;

	body = FUNC4();
	for (i = 0; i < 10000; ++i)
		FUNC1(body, "this is the body that HEAD should not have");

	FUNC7(data->base, port,
		"HEAD /timeout HTTP/1.1\r\n"
		"Host: somehost\r\n"
		"Connection: close\r\n"
		"Content-Length: %i\r\n"
		"\r\n%s",
		(int)FUNC3(body),
		FUNC5(body, -1)
	);
	FUNC9(test_ok == -2);

	FUNC7(data->base, port,
		"HEAD /__gencb__ HTTP/1.1\r\n"
		"Host: somehost\r\n"
		"Connection: close\r\n"
		"Content-Length: %i\r\n"
		"\r\n%s",
		(int)FUNC3(body),
		FUNC5(body, -1)
	);
	FUNC9(test_ok == -2);

 end:
	FUNC6(http);
	if (bev)
		FUNC0(bev);
	if (body)
		FUNC2(body);
}