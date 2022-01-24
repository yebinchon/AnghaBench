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
struct evhttp_connection {int dummy; } ;
struct event_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct evhttp_connection*) ; 
 struct event_base* FUNC2 (struct evhttp_connection*) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct evhttp_request *req, void *arg)
{
	struct evhttp_connection *evcon = arg;
	struct event_base *base = FUNC2(evcon);

	/* An ENETUNREACH error results in an unrecoverable
	 * evhttp_connection error (see evhttp_connection_fail_()).  The
	 * connection will be reset, and the user will be notified with a NULL
	 * req parameter. */
	FUNC3(!req);

	FUNC1(evcon);

	test_ok = 1;

 end:
	FUNC0(base, NULL);
}