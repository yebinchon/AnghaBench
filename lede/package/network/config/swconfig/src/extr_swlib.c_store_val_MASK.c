#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s; int /*<<< orphan*/  i; } ;
struct switch_val {scalar_t__ err; TYPE_1__ value; } ;
struct nl_msg {int dummy; } ;
struct genlmsghdr {int dummy; } ;

/* Variables and functions */
 int NL_SKIP ; 
 scalar_t__ SWITCH_ATTR_MAX ; 
 size_t SWITCH_ATTR_OP_VALUE_INT ; 
 size_t SWITCH_ATTR_OP_VALUE_LINK ; 
 size_t SWITCH_ATTR_OP_VALUE_PORTS ; 
 size_t SWITCH_ATTR_OP_VALUE_STR ; 
 int /*<<< orphan*/  FUNC0 (struct genlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct genlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct genlmsghdr* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nl_msg*) ; 
 scalar_t__ FUNC7 (struct nl_msg*,scalar_t__,struct switch_val*) ; 
 scalar_t__ FUNC8 (struct nl_msg*,scalar_t__,struct switch_val*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__* tb ; 

__attribute__((used)) static int
FUNC10(struct nl_msg *msg, void *arg)
{
	struct genlmsghdr *gnlh = FUNC5(FUNC6(msg));
	struct switch_val *val = arg;

	if (!val)
		goto error;

	if (FUNC4(tb, SWITCH_ATTR_MAX - 1, FUNC0(gnlh, 0),
			FUNC1(gnlh, 0), NULL) < 0) {
		goto error;
	}

	if (tb[SWITCH_ATTR_OP_VALUE_INT])
		val->value.i = FUNC3(tb[SWITCH_ATTR_OP_VALUE_INT]);
	else if (tb[SWITCH_ATTR_OP_VALUE_STR])
		val->value.s = FUNC9(FUNC2(tb[SWITCH_ATTR_OP_VALUE_STR]));
	else if (tb[SWITCH_ATTR_OP_VALUE_PORTS])
		val->err = FUNC8(msg, tb[SWITCH_ATTR_OP_VALUE_PORTS], val);
	else if (tb[SWITCH_ATTR_OP_VALUE_LINK])
		val->err = FUNC7(msg, tb[SWITCH_ATTR_OP_VALUE_LINK], val);

	val->err = 0;
	return 0;

error:
	return NL_SKIP;
}