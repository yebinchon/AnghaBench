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
struct evhttp_request {scalar_t__ response_code; } ;

/* Variables and functions */
 scalar_t__ HTTP_SERVUNAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC3(struct evhttp_request *req, void *arg)
{
	if (req->response_code != HTTP_SERVUNAVAIL) {

		FUNC2(stderr, "FAILED (response code)\n");
		FUNC1(1);
	}

	test_ok = 1;
	FUNC0(NULL);
}