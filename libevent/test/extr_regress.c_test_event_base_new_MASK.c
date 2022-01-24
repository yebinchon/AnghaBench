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
struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct basic_test_data {int /*<<< orphan*/ * pair; } ;
struct basic_cb_args {scalar_t__ callcount; struct event* ev; struct event_base* eb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVUTIL_SHUT_WR ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int /*<<< orphan*/  TEST1 ; 
 int /*<<< orphan*/  basic_read_cb ; 
 scalar_t__ FUNC0 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct event*,struct event_base*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct basic_cb_args*) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*) ; 
 scalar_t__ FUNC3 (struct event_base*,int /*<<< orphan*/ ) ; 
 struct event_base* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(void *ptr)
{
	struct basic_test_data *data = ptr;
	struct event_base *base = 0;
	struct event ev1;
	struct basic_cb_args args;

	int towrite = (int)FUNC6(TEST1)+1;
	int len = FUNC10(data->pair[0], TEST1, towrite);

	if (len < 0)
		FUNC8("initial write");
	else if (len != towrite)
		FUNC9(("initial write fell short (%d of %d bytes)",
				 len, towrite));

	if (FUNC5(data->pair[0], EVUTIL_SHUT_WR))
		FUNC8("initial write shutdown");

	base = FUNC4();
	if (!base)
		FUNC7("failed to create event base");

	args.eb = base;
	args.ev = &ev1;
	args.callcount = 0;
	FUNC1(&ev1, base, data->pair[1],
		     EV_READ|EV_PERSIST, basic_read_cb, &args);

	if (FUNC0(&ev1, NULL))
		FUNC8("initial event_add");

	if (FUNC3(base, 0))
		FUNC7("unsuccessful exit from event loop");

end:
	if (base)
		FUNC2(base);
}