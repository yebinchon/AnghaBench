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
struct testcase_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct testcase_t const*,void*) ; 
 int /*<<< orphan*/ * exit_base ; 
 scalar_t__ got_close ; 
 scalar_t__ got_error ; 
 scalar_t__ got_timeout ; 
 scalar_t__ n_connected ; 
 scalar_t__ pending_connect_events ; 
 int renegotiate_at ; 
 scalar_t__ stop_when_connected ; 
 scalar_t__ test_is_done ; 
 int /*<<< orphan*/  the_cert ; 
 int /*<<< orphan*/  the_key ; 
 int /*<<< orphan*/ * the_ssl_ctx ; 

__attribute__((used)) static int
FUNC4(const struct testcase_t *testcase, void *ptr)
{
	int ret = FUNC3(testcase, ptr);
	if (!ret) {
		return ret;
	}

	test_is_done = 0;
	n_connected = 0;
	got_close = 0;
	got_error = 0;
	got_timeout = 0;
	renegotiate_at = -1;
	stop_when_connected = 0;
	pending_connect_events = 0;
	exit_base = NULL;

	FUNC2(the_cert);
	FUNC0(the_key);

	FUNC1(the_ssl_ctx);
	the_ssl_ctx = NULL;

	return 1;
}