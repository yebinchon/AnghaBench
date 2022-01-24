#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nlmsghdr {int dummy; } ;
struct nl_msg {int nm_refcnt; int nm_protocol; size_t nm_size; TYPE_1__* nm_nlh; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct nl_msg*,size_t) ; 
 struct nl_msg* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_msg*) ; 
 TYPE_1__* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nl_msg *FUNC6(size_t len)
{
	struct nl_msg *nm;

	nm = FUNC1(1, sizeof(*nm));
	if (!nm)
		goto errout;

	nm->nm_refcnt = 1;

	nm->nm_nlh = FUNC3(len);
	if (!nm->nm_nlh)
		goto errout;

	FUNC4(nm->nm_nlh, 0, sizeof(struct nlmsghdr));

	nm->nm_protocol = -1;
	nm->nm_size = len;
	nm->nm_nlh->nlmsg_len = FUNC5(0);

	FUNC0(2, "msg %p: Allocated new message, maxlen=%zu\n", nm, len);

	return nm;
errout:
	FUNC2(nm);
	return NULL;
}