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

/* Variables and functions */
 scalar_t__ XDL_MERGE_DIFF3 ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int FUNC1 (char const*,char const*,void*) ; 
 scalar_t__ git_xmerge_style ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

int FUNC3(const char *var, const char *value, void *cb)
{
	if (!FUNC2(var, "merge.conflictstyle")) {
		if (!value)
			FUNC0("'%s' is not a boolean", var);
		if (!FUNC2(value, "diff3"))
			git_xmerge_style = XDL_MERGE_DIFF3;
		else if (!FUNC2(value, "merge"))
			git_xmerge_style = 0;
		/*
		 * Please update _git_checkout() in
		 * git-completion.bash when you add new merge config
		 */
		else
			FUNC0("unknown style '%s' given for '%s'",
			    value, var);
		return 0;
	}
	return FUNC1(var, value, cb);
}