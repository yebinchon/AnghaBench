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
struct evhttp_request {int chunked; int /*<<< orphan*/ * evcon; int /*<<< orphan*/  output_headers; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct evhttp_request*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_request*,int,char const*) ; 
 scalar_t__ FUNC5 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC7(struct evhttp_request *req, int code,
    const char *reason)
{
	FUNC4(req, code, reason);

	if (req->evcon == NULL)
		return;

	if (FUNC2(req->output_headers, "Content-Length") == NULL &&
	    FUNC0(req, 1, 1) &&
	    FUNC5(req)) {
		/*
		 * prefer HTTP/1.1 chunked encoding to closing the connection;
		 * note RFC 2616 section 4.4 forbids it with Content-Length:
		 * and it's not necessary then anyway.
		 */
		FUNC1(req->output_headers, "Transfer-Encoding",
		    "chunked");
		req->chunked = 1;
	} else {
		req->chunked = 0;
	}
	FUNC3(req->evcon, req);
	FUNC6(req->evcon, NULL, NULL);
}