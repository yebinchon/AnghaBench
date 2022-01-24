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
 int FAST_CLASSIFIER_A_MAX ; 
 size_t FAST_CLASSIFIER_A_TUPLE ; 
#define  FAST_CLASSIFIER_C_DONE 129 
#define  FAST_CLASSIFIER_C_OFFLOADED 128 
 int NL_OK ; 
 int NL_SKIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fast_classifier_genl_policy ; 
 int /*<<< orphan*/  FUNC1 (struct nlmsghdr*,int /*<<< orphan*/ ,struct nlattr**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 struct genlmsghdr* FUNC3 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct nl_msg*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct nl_msg *msg, void *arg)
{
	struct nlmsghdr *nlh = FUNC4(msg);
	struct genlmsghdr *gnlh = FUNC3(nlh);
	struct nlattr *attrs[FAST_CLASSIFIER_A_MAX];

	FUNC1(nlh, 0, attrs, FAST_CLASSIFIER_A_MAX, fast_classifier_genl_policy);

	switch (gnlh->cmd) {
	case FAST_CLASSIFIER_C_OFFLOADED:
		FUNC5("Got a offloaded message\n");
		FUNC0(FUNC2(attrs[FAST_CLASSIFIER_A_TUPLE]));
		return NL_OK;
	case FAST_CLASSIFIER_C_DONE:
		FUNC5("Got a done message\n");
		FUNC0(FUNC2(attrs[FAST_CLASSIFIER_A_TUPLE]));
		return NL_OK;
	}

	return NL_SKIP;
}