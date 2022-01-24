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

/* Variables and functions */
 struct nlattr* FUNC0 (int) ; 
 int FUNC1 (int,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct nlattr*,int) ; 

struct nlattr *FUNC3(int maxtype, struct nlattr *nla, int attrtype)
{
	int err;
	/*
	 * If any nested attribute has the DRBD_GENLA_F_MANDATORY flag set and
	 * we don't know about that attribute, reject all the nested
	 * attributes.
	 */
	err = FUNC1(maxtype, nla);
	if (err)
		return FUNC0(err);
	return FUNC2(nla, attrtype);
}