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

/* Variables and functions */
 int /*<<< orphan*/  FAST_CLASSIFIER_GENL_MCGRP ; 
 int /*<<< orphan*/  FAST_CLASSIFIER_GENL_NAME ; 
 int /*<<< orphan*/  NL_CB_CUSTOM ; 
 int /*<<< orphan*/  NL_CB_VALID ; 
 scalar_t__ family ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ grp_id ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  parse_cb ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  sock_event ; 

int FUNC10(void)
{
	int err;

	sock = FUNC5();
	if (!sock) {
		FUNC9("Unable to allocation socket.\n");
		return -1;
	}
	FUNC0(sock);

	sock_event = FUNC5();
	if (!sock_event) {
		FUNC3(sock);
		FUNC7(sock);
		FUNC9("Unable to allocation socket.\n");
		return -1;
	}
	FUNC0(sock_event);

	family = FUNC1(sock, FAST_CLASSIFIER_GENL_NAME);
	if (family < 0) {
		FUNC3(sock_event);
		FUNC3(sock);
		FUNC7(sock);
		FUNC7(sock_event);
		FUNC9("Unable to resolve family\n");
		return -1;
	}

	grp_id = FUNC2(sock, FAST_CLASSIFIER_GENL_NAME,
				       FAST_CLASSIFIER_GENL_MCGRP);
	if (grp_id < 0) {
		FUNC9("Unable to resolve mcast group\n");
		return -1;
	}

	err = FUNC4(sock_event, grp_id);
	if (err < 0) {
		FUNC9("Unable to add membership\n");
		return -1;
	}

	FUNC6(sock_event);
	FUNC8(sock_event, NL_CB_VALID, NL_CB_CUSTOM, parse_cb, NULL);

	return 0;
}