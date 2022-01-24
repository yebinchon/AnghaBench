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
struct evhttp_request {int flags; int /*<<< orphan*/ * output_buffer; int /*<<< orphan*/ * input_buffer; struct evhttp_request* output_headers; struct evhttp_request* input_headers; struct evhttp_request* host_cache; struct evhttp_request* response_code_line; int /*<<< orphan*/ * uri_elems; struct evhttp_request* uri; struct evhttp_request* remote_host; } ;

/* Variables and functions */
 int EVHTTP_REQ_DEFER_FREE ; 
 int EVHTTP_REQ_NEEDS_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_request*) ; 

void
FUNC4(struct evhttp_request *req)
{
	if ((req->flags & EVHTTP_REQ_DEFER_FREE) != 0) {
		req->flags |= EVHTTP_REQ_NEEDS_FREE;
		return;
	}

	if (req->remote_host != NULL)
		FUNC3(req->remote_host);
	if (req->uri != NULL)
		FUNC3(req->uri);
	if (req->uri_elems != NULL)
		FUNC2(req->uri_elems);
	if (req->response_code_line != NULL)
		FUNC3(req->response_code_line);
	if (req->host_cache != NULL)
		FUNC3(req->host_cache);

	FUNC1(req->input_headers);
	FUNC3(req->input_headers);

	FUNC1(req->output_headers);
	FUNC3(req->output_headers);

	if (req->input_buffer != NULL)
		FUNC0(req->input_buffer);

	if (req->output_buffer != NULL)
		FUNC0(req->output_buffer);

	FUNC3(req);
}