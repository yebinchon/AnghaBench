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
struct diff_options {int /*<<< orphan*/  submodule_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_SUBMODULE_INLINE_DIFF ; 
 int /*<<< orphan*/  DIFF_SUBMODULE_LOG ; 
 int /*<<< orphan*/  DIFF_SUBMODULE_SHORT ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static int FUNC1(struct diff_options *options, const char *value)
{
	if (!FUNC0(value, "log"))
		options->submodule_format = DIFF_SUBMODULE_LOG;
	else if (!FUNC0(value, "short"))
		options->submodule_format = DIFF_SUBMODULE_SHORT;
	else if (!FUNC0(value, "diff"))
		options->submodule_format = DIFF_SUBMODULE_INLINE_DIFF;
	/*
	 * Please update $__git_diff_submodule_formats in
	 * git-completion.bash when you add new formats.
	 */
	else
		return -1;
	return 0;
}