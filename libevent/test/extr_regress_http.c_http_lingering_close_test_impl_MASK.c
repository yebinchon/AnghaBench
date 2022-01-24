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
typedef  struct evhttp_request evhttp_connection ;
struct evhttp {int dummy; } ;
struct basic_test_data {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVHTTP_REQ_POST ; 
 int /*<<< orphan*/  EVHTTP_SERVER_LINGERING_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 struct evhttp_request* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_request*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp*) ; 
 int FUNC7 (struct evhttp_request*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC10 (void (*) (struct evhttp_request*,void*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct evhttp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct evhttp*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 void FUNC14 (struct evhttp_request*,void*) ; 
 void FUNC15 (struct evhttp_request*,void*) ; 
 struct evhttp* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC17 (size_t) ; 
 int /*<<< orphan*/  FUNC18 (char*,char,size_t) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static void
FUNC21(void *arg, int lingering)
{
	struct basic_test_data *data = arg;
	ev_uint16_t port = 0;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req = NULL;
	char *long_str = NULL;
	size_t size = (1<<20) * 3;
	void (*cb)(struct evhttp_request *, void *);
	struct evhttp *http = FUNC16(&port, data->base, 0);

	test_ok = 0;

	if (lingering)
		FUNC20(!FUNC11(http, EVHTTP_SERVER_LINGERING_CLOSE));
	FUNC12(http, size / 2);

	evcon = FUNC3(data->base, NULL, "127.0.0.1", port);
	FUNC20(evcon);
	FUNC5(evcon, "127.0.0.1");

	/*
	 * At this point, we want to schedule an HTTP GET request
	 * server using our make request method.
	 */

	long_str = FUNC17(size);
	FUNC18(long_str, 'a', size);
	long_str[size - 1] = '\0';

	if (lingering)
		cb = http_large_entity_test_done;
	else
		cb = http_failed_request_done;
	req = FUNC10(cb, data->base);
	FUNC20(req);
	FUNC2(FUNC9(req), "Host", "somehost");
	FUNC0(FUNC8(req), "%s", long_str);
	if (FUNC7(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
		FUNC19("Couldn't make request");
	}
	FUNC1(data->base);

	test_ok = 1;
 end:
	if (evcon)
		FUNC4(evcon);
	if (http)
		FUNC6(http);
	if (long_str)
		FUNC13(long_str);
}