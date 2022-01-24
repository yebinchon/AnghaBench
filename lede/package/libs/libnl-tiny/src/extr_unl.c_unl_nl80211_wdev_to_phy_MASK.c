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
struct unl {int dummy; } ;
struct nlattr {int dummy; } ;
struct nl_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_GET_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (struct nl_msg*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_msg*) ; 
 struct nlattr* FUNC3 (struct unl*,struct nl_msg*,int /*<<< orphan*/ ) ; 
 struct nl_msg* FUNC4 (struct unl*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct unl*,struct nl_msg*,struct nl_msg**) ; 

int FUNC6(struct unl *unl, int wdev)
{
	struct nl_msg *msg;
	struct nlattr *attr;
	int ret = -1;

	msg = FUNC4(unl, NL80211_CMD_GET_INTERFACE, false);
	if (!msg)
		return -1;

	FUNC0(msg, NL80211_ATTR_IFINDEX, wdev);
	if (FUNC5(unl, msg, &msg) < 0)
		return -1;

	attr = FUNC3(unl, msg, NL80211_ATTR_WIPHY);
	if (!attr)
		goto out;

	ret = FUNC1(attr);
out:
nla_put_failure:
	FUNC2(msg);
	return ret;
}