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
struct genlmsghdr {int dummy; } ;

/* Variables and functions */
 int NLE_MSG_TOOSHORT ; 
 int /*<<< orphan*/  FUNC0 (struct genlmsghdr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct genlmsghdr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nlmsghdr*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nla_policy*) ; 
 struct genlmsghdr* FUNC4 (struct nlmsghdr*) ; 

int FUNC5(struct nlmsghdr *nlh, int hdrlen, int maxtype,
		   struct nla_policy *policy)
{
	struct genlmsghdr *ghdr;

	if (!FUNC2(nlh, hdrlen))
		return -NLE_MSG_TOOSHORT;

	ghdr = FUNC4(nlh);
	return FUNC3(FUNC0(ghdr, hdrlen),
			    FUNC1(ghdr, hdrlen), maxtype, policy);
}