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
struct branch {int /*<<< orphan*/  refname; } ;
typedef  enum ahead_behind_flags { ____Placeholder_ahead_behind_flags } ahead_behind_flags ;

/* Variables and functions */
 char* FUNC0 (struct branch*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct branch*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int*,int*,int) ; 

int FUNC3(struct branch *branch, int *num_ours, int *num_theirs,
		       const char **tracking_name, int for_push,
		       enum ahead_behind_flags abf)
{
	const char *base;

	/* Cannot stat unless we are marked to build on top of somebody else. */
	base = for_push ? FUNC0(branch, NULL) :
		FUNC1(branch, NULL);
	if (tracking_name)
		*tracking_name = base;
	if (!base)
		return -1;

	return FUNC2(branch->refname, base, num_ours, num_theirs, abf);
}