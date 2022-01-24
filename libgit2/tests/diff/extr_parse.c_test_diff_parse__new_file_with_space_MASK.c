#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  new_prefix; int /*<<< orphan*/  old_prefix; } ;
struct TYPE_12__ {TYPE_4__* delta; TYPE_2__ diff_opts; } ;
typedef  TYPE_5__ git_patch ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_10__ {int /*<<< orphan*/  path; } ;
struct TYPE_8__ {int /*<<< orphan*/  path; } ;
struct TYPE_11__ {TYPE_3__ new_file; TYPE_1__ old_file; } ;

/* Variables and functions */
 char* PATCH_ORIGINAL_NEW_FILE_WITH_SPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

void FUNC8(void)
{
	const char *content = PATCH_ORIGINAL_NEW_FILE_WITH_SPACE;
	git_patch *patch;
	git_diff *diff;

	FUNC2(FUNC4(&diff, content, FUNC7(content)));
	FUNC2(FUNC6((git_patch **) &patch, diff, 0));

	FUNC0(patch->diff_opts.old_prefix, NULL);
	FUNC0(patch->delta->old_file.path, NULL);
	FUNC1(patch->diff_opts.new_prefix, "b/");
	FUNC1(patch->delta->new_file.path, "sp ace.txt");

	FUNC5(patch);
	FUNC3(diff);
}