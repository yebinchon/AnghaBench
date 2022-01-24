#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* path; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_7__ {int /*<<< orphan*/  pathspec; } ;
typedef  TYPE_2__ git_diff_generated ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_DIFF_DISABLE_PATHSPEC_MATCH ; 
 int /*<<< orphan*/  GIT_DIFF_IGNORE_CASE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int,int,char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(
	const char **matched_pathspec,
	git_diff_generated *diff,
	const git_index_entry *entry)
{
	bool disable_pathspec_match =
		FUNC0(diff, GIT_DIFF_DISABLE_PATHSPEC_MATCH);

	/* If we're disabling fnmatch, then the iterator has already applied
	 * the filters to the files for us and we don't have to do anything.
	 * However, this only applies to *files* - the iterator will include
	 * directories that we need to recurse into when not autoexpanding,
	 * so we still need to apply the pathspec match to directories.
	 */
	if ((FUNC1(entry->mode) || FUNC2(entry->mode)) &&
		disable_pathspec_match) {
		*matched_pathspec = entry->path;
		return true;
	}

	return FUNC3(
		&diff->pathspec, entry->path, disable_pathspec_match,
		FUNC0(diff, GIT_DIFF_IGNORE_CASE),
		matched_pathspec, NULL);
}