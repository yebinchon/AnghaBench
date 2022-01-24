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
struct nlmsghdr {int /*<<< orphan*/  nlmsg_len; } ;
struct nl_msg {int /*<<< orphan*/  nm_nlh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nl_msg* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nl_msg*) ; 

struct nl_msg *FUNC4(struct nlmsghdr *hdr)
{
	struct nl_msg *nm;

	nm = FUNC1(FUNC0(hdr->nlmsg_len));
	if (!nm)
		goto errout;

	FUNC2(nm->nm_nlh, hdr, hdr->nlmsg_len);

	return nm;
errout:
	FUNC3(nm);
	return NULL;
}