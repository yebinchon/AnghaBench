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
struct merge_options {char* branch1; char* branch2; } ;
struct diff_filespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct merge_options*,char const*,int /*<<< orphan*/ *,struct diff_filespec const*,struct diff_filespec const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct diff_filespec const*) ; 

__attribute__((used)) static int FUNC3(struct merge_options *opt,
				const char *path,
				const struct diff_filespec *o,
				const struct diff_filespec *a,
				const struct diff_filespec *b)
{
	const char *modify_branch, *delete_branch;
	const struct diff_filespec *changed;

	if (FUNC2(a)) {
		modify_branch = opt->branch1;
		delete_branch = opt->branch2;
		changed = a;
	} else {
		modify_branch = opt->branch2;
		delete_branch = opt->branch1;
		changed = b;
	}

	return FUNC1(opt,
				    path, NULL,
				    o, changed,
				    modify_branch, delete_branch,
				    FUNC0("modify"), FUNC0("modified"));
}