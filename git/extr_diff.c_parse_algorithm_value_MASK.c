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
 long XDF_HISTOGRAM_DIFF ; 
 long XDF_NEED_MINIMAL ; 
 long XDF_PATIENCE_DIFF ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

long FUNC1(const char *value)
{
	if (!value)
		return -1;
	else if (!FUNC0(value, "myers") || !FUNC0(value, "default"))
		return 0;
	else if (!FUNC0(value, "minimal"))
		return XDF_NEED_MINIMAL;
	else if (!FUNC0(value, "patience"))
		return XDF_PATIENCE_DIFF;
	else if (!FUNC0(value, "histogram"))
		return XDF_HISTOGRAM_DIFF;
	/*
	 * Please update $__git_diff_algorithms in git-completion.bash
	 * when you add new algorithms.
	 */
	return -1;
}