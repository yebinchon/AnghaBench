#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* pattern; int /*<<< orphan*/ * taglist; } ;
typedef  TYPE_1__ tag_filter_data ;
typedef  int /*<<< orphan*/  git_vector ;
struct TYPE_5__ {char** strings; int /*<<< orphan*/  count; } ;
typedef  TYPE_2__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tag_list_cb ; 

int FUNC5(git_strarray *tag_names, const char *pattern, git_repository *repo)
{
	int error;
	tag_filter_data filter;
	git_vector taglist;

	FUNC0(tag_names && repo && pattern);

	if ((error = FUNC4(&taglist, 8, NULL)) < 0)
		return error;

	filter.taglist = &taglist;
	filter.pattern = pattern;

	error = FUNC1(repo, &tag_list_cb, (void *)&filter);

	if (error < 0)
		FUNC3(&taglist);

	tag_names->strings =
		(char **)FUNC2(&tag_names->count, NULL, &taglist);

	return 0;
}