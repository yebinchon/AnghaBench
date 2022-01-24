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
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nl_msg {int dummy; } ;
struct genlmsghdr {int cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL_CLASSIFIER_ATTR_MAX ; 
 size_t NL_CLASSIFIER_ATTR_TUPLE ; 
#define  NL_CLASSIFIER_CMD_ACCEL_OK 129 
#define  NL_CLASSIFIER_CMD_CONNECTION_CLOSED 128 
 int /*<<< orphan*/  NL_CLASSIFIER_GENL_HDRSIZE ; 
 int NL_OK ; 
 int NL_SKIP ; 
 int /*<<< orphan*/  FUNC0 (struct nlmsghdr*,int /*<<< orphan*/ ,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl_classifier_genl_policy ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 struct genlmsghdr* FUNC3 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct nl_msg*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

int FUNC6(struct nl_msg *msg, void *arg)
{
	struct nlmsghdr *nlh = FUNC4(msg);
	struct genlmsghdr *gnlh = FUNC3(nlh);
	struct nlattr *attrs[(NL_CLASSIFIER_ATTR_MAX+1)];

	FUNC0(nlh, NL_CLASSIFIER_GENL_HDRSIZE, attrs, NL_CLASSIFIER_ATTR_MAX, nl_classifier_genl_policy);

	switch (gnlh->cmd) {
	case NL_CLASSIFIER_CMD_ACCEL_OK:
		FUNC5("Acceleration successful:\n");
		FUNC1(FUNC2(attrs[NL_CLASSIFIER_ATTR_TUPLE]));
		return NL_OK;
	case NL_CLASSIFIER_CMD_CONNECTION_CLOSED:
		FUNC5("Connection is closed:\n");
		FUNC1(FUNC2(attrs[NL_CLASSIFIER_ATTR_TUPLE]));
		return NL_OK;
	default:
		FUNC5("nl classifier received unknow message %d\n", gnlh->cmd);
	}

	return NL_SKIP;
}