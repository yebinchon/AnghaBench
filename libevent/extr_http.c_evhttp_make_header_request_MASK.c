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
struct evhttp_request {scalar_t__ type; int /*<<< orphan*/  output_headers; int /*<<< orphan*/  output_buffer; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; int /*<<< orphan*/  uri; } ;
struct evhttp_connection {int /*<<< orphan*/  bufev; } ;
typedef  int /*<<< orphan*/  size ;
typedef  int ev_uint16_t ;

/* Variables and functions */
 int EVHTTP_METHOD_HAS_BODY ; 
 scalar_t__ EVHTTP_REQ_POST ; 
 scalar_t__ EVHTTP_REQ_PUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  EV_SIZE_FMT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (struct evhttp_connection*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct evhttp_connection *evcon,
    struct evhttp_request *req)
{
	const char *method;
	ev_uint16_t flags;

	FUNC7(req->output_headers, "Proxy-Connection");

	/* Generate request line */
	if (!(method = FUNC6(evcon, req->type, &flags))) {
		method = "NULL";
	}

	FUNC2(FUNC1(evcon->bufev),
	    "%s %s HTTP/%d.%d\r\n",
	    method, req->uri, req->major, req->minor);

	/* Add the content length on a request if missing
	 * Always add it for POST and PUT requests as clients expect it */
	if ((flags & EVHTTP_METHOD_HAS_BODY) &&
	    (FUNC3(req->output_buffer) > 0 ||
	     req->type == EVHTTP_REQ_POST || req->type == EVHTTP_REQ_PUT) &&
	    FUNC5(req->output_headers, "Content-Length") == NULL) {
		char size[22];
		FUNC8(size, sizeof(size), EV_SIZE_FMT,
		    FUNC0(FUNC3(req->output_buffer)));
		FUNC4(req->output_headers, "Content-Length", size);
	}
}