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
typedef  void* uint32_t ;
struct nlmsghdr {int nlmsg_type; int nlmsg_flags; void* nlmsg_seq; void* nlmsg_pid; } ;
struct nl_msg {TYPE_1__* nm_nlh; } ;
struct TYPE_2__ {scalar_t__ nlmsg_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  NLMSG_ALIGNTO ; 
 scalar_t__ NLMSG_HDRLEN ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct nl_msg*,int,int,void*,void*) ; 
 int /*<<< orphan*/ * FUNC2 (struct nl_msg*,int,int /*<<< orphan*/ ) ; 

struct nlmsghdr *FUNC3(struct nl_msg *n, uint32_t pid, uint32_t seq,
			   int type, int payload, int flags)
{
	struct nlmsghdr *nlh;

	if (n->nm_nlh->nlmsg_len < NLMSG_HDRLEN)
		FUNC0();

	nlh = (struct nlmsghdr *) n->nm_nlh;
	nlh->nlmsg_type = type;
	nlh->nlmsg_flags = flags;
	nlh->nlmsg_pid = pid;
	nlh->nlmsg_seq = seq;

	FUNC1(2, "msg %p: Added netlink header type=%d, flags=%d, pid=%d, "
		  "seq=%d\n", n, type, flags, pid, seq);

	if (payload > 0 &&
	    FUNC2(n, payload, NLMSG_ALIGNTO) == NULL)
		return NULL;

	return nlh;
}