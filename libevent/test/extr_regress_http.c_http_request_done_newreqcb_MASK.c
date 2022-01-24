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
struct http_newreqcb_test_state {int /*<<< orphan*/  connections_done; int /*<<< orphan*/  connections_good; } ;
struct evhttp_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ HTTP_OK ; 
 scalar_t__ FUNC0 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct evhttp_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct http_newreqcb_test_state*) ; 

__attribute__((used)) static void
FUNC3(struct evhttp_request *req, void *arg)
{
	struct http_newreqcb_test_state* state = arg;
	if (req && FUNC0(req) == HTTP_OK) {
		++state->connections_good;
		FUNC1(req, NULL);
	}
	++state->connections_done;

	FUNC2(state);
}