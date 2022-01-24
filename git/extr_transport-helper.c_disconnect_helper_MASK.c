#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct transport {struct helper_data* data; } ;
struct helper_data {TYPE_1__* helper; int /*<<< orphan*/  out; int /*<<< orphan*/  no_disconnect_req; } ;
struct TYPE_3__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC8(struct transport *transport)
{
	struct helper_data *data = transport->data;
	int res = 0;

	if (data->helper) {
		if (debug)
			FUNC4(stderr, "Debug: Disconnecting.\n");
		if (!data->no_disconnect_req) {
			/*
			 * Ignore write errors; there's nothing we can do,
			 * since we're about to close the pipe anyway. And the
			 * most likely error is EPIPE due to the helper dying
			 * to report an error itself.
			 */
			FUNC6(SIGPIPE, SIG_IGN);
			FUNC7(data->helper->in, "\n", 1);
			FUNC5(SIGPIPE);
		}
		FUNC1(data->helper->in);
		FUNC1(data->helper->out);
		FUNC2(data->out);
		res = FUNC3(data->helper);
		FUNC0(data->helper);
	}
	return res;
}