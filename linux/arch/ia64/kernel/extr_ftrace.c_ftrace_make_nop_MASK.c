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
struct module {int dummy; } ;
struct dyn_ftrace {int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 int FUNC0 (struct dyn_ftrace*,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 

int FUNC3(struct module *mod,
		    struct dyn_ftrace *rec, unsigned long addr)
{
	int ret;
	char *new;

	ret = FUNC0(rec, addr);
	if (ret)
		return ret;
	new = FUNC2();
	return FUNC1(rec->ip, NULL, new, 0);
}