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
 int /*<<< orphan*/  EVHTTP_CON_READ_ON_WRITE_ERROR ; 
 int /*<<< orphan*/  EVHTTP_REQ_GET ; 
 int /*<<< orphan*/  EVHTTP_REQ_POST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 struct evhttp_request* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct evhttp_request*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp*) ; 
 int FUNC9 (struct evhttp_request*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC12 (void (*) (struct evhttp_request*,void*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct evhttp*,size_t const) ; 
 int /*<<< orphan*/  FUNC14 (struct evhttp*,size_t const) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 void FUNC16 (struct evhttp_request*,void*) ; 
 void FUNC17 (struct evhttp_request*,void*) ; 
 void FUNC18 (struct evhttp_request*,void*) ; 
 void FUNC19 (struct evhttp_request*,void*) ; 
 void FUNC20 (struct evhttp_request*,void*) ; 
 struct evhttp* FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC22 (size_t const) ; 
 int /*<<< orphan*/  FUNC23 (char*,char,size_t const) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 

__attribute__((used)) static void
FUNC26(void *arg, int read_on_write_error)
{
	struct basic_test_data *data = arg;
	ev_uint16_t port = 0;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req = NULL;
	char *long_str = NULL;
	const size_t continue_size = 1<<20;
	const size_t size = (1<<20) * 3;
	void (*cb)(struct evhttp_request *, void *);
	struct evhttp *http = FUNC21(&port, data->base, 0);

	test_ok = 0;
	cb = http_failed_request_done;
	if (read_on_write_error)
		cb = http_data_length_constraints_test_done;

	FUNC25(continue_size < size);

	long_str = FUNC22(size);
	FUNC23(long_str, 'a', size);
	long_str[size - 1] = '\0';

	FUNC0(("Creating connection to :%i", port));
	evcon = FUNC4(data->base, NULL, "127.0.0.1", port);
	FUNC25(evcon);

	if (read_on_write_error)
		FUNC25(!FUNC6(evcon, EVHTTP_CON_READ_ON_WRITE_ERROR));

	FUNC7(evcon, "127.0.0.1");

	FUNC14(http, size - 1);
	FUNC0(("Set max header size %zu", size - 1));

	req = FUNC12(http_data_length_constraints_test_done, data->base);
	FUNC25(req);
	FUNC3(FUNC11(req), "Host", "somehost");
	FUNC3(FUNC11(req), "Longheader", long_str);
	FUNC0(("GET /?arg=val"));
	if (FUNC9(evcon, req, EVHTTP_REQ_GET, "/?arg=val") == -1) {
		FUNC24("Couldn't make request");
	}
	FUNC2(data->base);

	req = FUNC12(http_data_length_constraints_test_done, data->base);
	FUNC25(req);
	FUNC3(FUNC11(req), "Host", "somehost");
	/* GET /?arg=verylongvalue HTTP/1.1 */
	FUNC0(("GET %s", long_str));
	if (FUNC9(evcon, req, EVHTTP_REQ_GET, long_str) == -1) {
		FUNC24("Couldn't make request");
	}
	FUNC2(data->base);

	FUNC13(http, size - 2);
	FUNC0(("Set body header size %zu", size - 2));

	if (read_on_write_error)
		cb = http_large_entity_test_done;
	req = FUNC12(cb, data->base);
	FUNC3(FUNC11(req), "Host", "somehost");
	FUNC1(FUNC10(req), "%s", long_str);
	FUNC0(("POST /"));
	if (FUNC9(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
		FUNC24("Couldn't make request");
	}
	FUNC2(data->base);

	req = FUNC12(http_large_entity_test_done, data->base);
	FUNC3(FUNC11(req), "Host", "somehost");
	FUNC3(FUNC11(req), "Expect", "100-continue");
	FUNC1(FUNC10(req), "%s", long_str);
	FUNC0(("POST / (Expect: 100-continue, http_large_entity_test_done)"));
	if (FUNC9(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
		FUNC24("Couldn't make request");
	}
	FUNC2(data->base);

	long_str[continue_size] = '\0';

	req = FUNC12(http_dispatcher_test_done, data->base);
	FUNC3(FUNC11(req), "Host", "somehost");
	FUNC3(FUNC11(req), "Expect", "100-continue");
	FUNC1(FUNC10(req), "%s", long_str);
	FUNC0(("POST / (Expect: 100-continue, http_dispatcher_test_done)"));
	if (FUNC9(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
		FUNC24("Couldn't make request");
	}
	FUNC2(data->base);

	if (read_on_write_error)
		cb = http_expectation_failed_done;
	req = FUNC12(cb, data->base);
	FUNC3(FUNC11(req), "Host", "somehost");
	FUNC3(FUNC11(req), "Expect", "101-continue");
	FUNC1(FUNC10(req), "%s", long_str);
	FUNC0(("POST / (Expect: 101-continue)"));
	if (FUNC9(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
		FUNC24("Couldn't make request");
	}
	FUNC2(data->base);

	test_ok = 1;
 end:
	if (evcon)
		FUNC5(evcon);
	if (http)
		FUNC8(http);
	if (long_str)
		FUNC15(long_str);
}