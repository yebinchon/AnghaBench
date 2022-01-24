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
struct evkeyvalq {int dummy; } ;
struct evhttp_request {scalar_t__ kind; struct evkeyvalq* output_headers; struct evkeyvalq* input_headers; } ;
typedef  enum expect { ____Placeholder_expect } expect ;

/* Variables and functions */
 int CONTINUE ; 
 scalar_t__ EVHTTP_REQUEST ; 
 int NO ; 
 int OTHER ; 
 int /*<<< orphan*/  FUNC0 (struct evhttp_request*,int,int) ; 
 char* FUNC1 (struct evkeyvalq*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static enum expect FUNC3(struct evhttp_request *req, int input)
{
	const char *expect;
	struct evkeyvalq *h = input ? req->input_headers : req->output_headers;

	if (!(req->kind == EVHTTP_REQUEST) || !FUNC0(req, 1, 1))
		return NO;

	expect = FUNC1(h, "Expect");
	if (!expect)
		return NO;

	return !FUNC2(expect, "100-continue") ? CONTINUE : OTHER;
}