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
struct nl_msg {int dummy; } ;
struct genlmsghdr {int dummy; } ;

/* Variables and functions */
 int NL_SKIP ; 
 size_t SWITCH_ATTR_ALIAS ; 
 size_t SWITCH_ATTR_DEV_NAME ; 
 int /*<<< orphan*/  SWITCH_ATTR_MAX ; 
 size_t SWITCH_ATTR_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct genlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct genlmsghdr*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct genlmsghdr* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nl_msg*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/ * tb ; 

__attribute__((used)) static int
FUNC7(struct nl_msg *msg, void *arg)
{
	struct genlmsghdr *gnlh = FUNC4(FUNC5(msg));

	if (FUNC3(tb, SWITCH_ATTR_MAX, FUNC0(gnlh, 0), FUNC1(gnlh, 0), NULL) < 0)
		goto done;

	if (!tb[SWITCH_ATTR_DEV_NAME] || !tb[SWITCH_ATTR_NAME])
		goto done;

	FUNC6("Found: %s - %s\n", FUNC2(tb[SWITCH_ATTR_DEV_NAME]),
		FUNC2(tb[SWITCH_ATTR_ALIAS]));

done:
	return NL_SKIP;
}