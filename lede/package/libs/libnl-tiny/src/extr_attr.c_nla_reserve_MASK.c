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
struct nlattr {int nla_type; int nla_len; } ;
struct nl_msg {int nm_size; TYPE_1__* nm_nlh; } ;
struct TYPE_3__ {int nlmsg_len; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct nl_msg*,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 

struct nlattr *FUNC8(struct nl_msg *msg, int attrtype, int attrlen)
{
	struct nlattr *nla;
	int tlen;
	
	tlen = FUNC0(msg->nm_nlh->nlmsg_len) + FUNC5(attrlen);

	if ((tlen + msg->nm_nlh->nlmsg_len) > msg->nm_size)
		return NULL;

	nla = (struct nlattr *) FUNC7(msg->nm_nlh);
	nla->nla_type = attrtype;
	nla->nla_len = FUNC3(attrlen);

	FUNC2((unsigned char *) nla + nla->nla_len, 0, FUNC4(attrlen));
	msg->nm_nlh->nlmsg_len = tlen;

	FUNC1(2, "msg %p: Reserved %d bytes at offset +%td for attr %d "
		  "nlmsg_len=%d\n", msg, attrlen,
		  (void *) nla - FUNC6(msg->nm_nlh),
		  attrtype, msg->nm_nlh->nlmsg_len);

	return nla;
}