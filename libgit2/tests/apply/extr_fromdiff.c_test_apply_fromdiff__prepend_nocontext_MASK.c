#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ context_lines; } ;
typedef  TYPE_1__ git_diff_options ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_ORIGINAL ; 
 int /*<<< orphan*/  FILE_PREPEND ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  PATCH_ORIGINAL_TO_PREPEND_NOCONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	git_diff_options diff_opts = GIT_DIFF_OPTIONS_INIT;
	diff_opts.context_lines = 0;

	FUNC1(FUNC0(
		FILE_ORIGINAL, "file.txt",
		FILE_PREPEND, "file.txt",
		PATCH_ORIGINAL_TO_PREPEND_NOCONTEXT, &diff_opts));
}