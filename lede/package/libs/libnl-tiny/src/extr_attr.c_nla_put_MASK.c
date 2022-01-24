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
struct nlattr {int dummy; } ;
struct nl_msg {int /*<<< orphan*/  nm_nlh; } ;

/* Variables and functions */
 int NLE_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct nl_msg*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 struct nlattr* FUNC3 (struct nl_msg*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct nl_msg *msg, int attrtype, int datalen, const void *data)
{
	struct nlattr *nla;

	nla = FUNC3(msg, attrtype, datalen);
	if (!nla)
		return -NLE_NOMEM;

	FUNC1(FUNC2(nla), data, datalen);
	FUNC0(2, "msg %p: Wrote %d bytes at offset +%td for attr %d\n",
	       msg, datalen, (void *) nla - FUNC4(msg->nm_nlh), attrtype);

	return 0;
}