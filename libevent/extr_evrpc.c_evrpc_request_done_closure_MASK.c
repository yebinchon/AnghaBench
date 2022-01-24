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
struct evrpc_req_generic {int /*<<< orphan*/  rpc_data; struct evhttp_request* http_req; } ;
struct evhttp_request {int /*<<< orphan*/  output_headers; } ;
typedef  enum EVRPC_HOOK_RESULT { ____Placeholder_EVRPC_HOOK_RESULT } EVRPC_HOOK_RESULT ;

/* Variables and functions */
 int EVRPC_TERMINATE ; 
 int /*<<< orphan*/  FUNC0 (struct evrpc_req_generic*) ; 
 int /*<<< orphan*/  HTTP_OK ; 
 int /*<<< orphan*/  HTTP_SERVUNAVAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_request*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct evrpc_req_generic*) ; 

__attribute__((used)) static void
FUNC6(void *arg, enum EVRPC_HOOK_RESULT hook_res)
{
	struct evrpc_req_generic *rpc_state = arg;
	struct evhttp_request *req;
	FUNC0(rpc_state);
	req = rpc_state->http_req;

	if (hook_res == EVRPC_TERMINATE)
		goto error;

	/* on success, we are going to transmit marshaled binary data */
	if (FUNC2(req->output_headers, "Content-Type") == NULL) {
		FUNC1(req->output_headers,
		    "Content-Type", "application/octet-stream");
	}
	FUNC4(req, HTTP_OK, "OK", rpc_state->rpc_data);

	FUNC5(rpc_state);

	return;

error:
	FUNC5(rpc_state);
	FUNC3(req, HTTP_SERVUNAVAIL, NULL);
	return;
}