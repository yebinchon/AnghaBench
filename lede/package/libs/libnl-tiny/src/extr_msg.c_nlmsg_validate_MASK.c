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
struct nla_policy {int dummy; } ;

/* Variables and functions */
 int NLE_MSG_TOOSHORT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nla_policy*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlmsghdr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nlmsghdr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nlmsghdr*,int) ; 

int FUNC4(struct nlmsghdr *nlh, int hdrlen, int maxtype,
		   struct nla_policy *policy)
{
	if (!FUNC3(nlh, hdrlen))
		return -NLE_MSG_TOOSHORT;

	return FUNC0(FUNC1(nlh, hdrlen),
			    FUNC2(nlh, hdrlen), maxtype, policy);
}