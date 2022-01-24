#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_9__ {scalar_t__ (* entries_cmp_path ) (int /*<<< orphan*/ ,char const*) ;int /*<<< orphan*/  entries; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (size_t*,TYPE_2__*,char const*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC5(git_index *index, const char *path)
{
	size_t pos = 0;
	git_index_entry *conflict_entry;
	int error = 0;

	if (path != NULL && FUNC1(&pos, index, path) < 0)
		return GIT_ENOTFOUND;

	while ((conflict_entry = FUNC2(&index->entries, pos)) != NULL) {

		if (path != NULL &&
			index->entries_cmp_path(conflict_entry->path, path) != 0)
			break;

		if (FUNC0(conflict_entry) == 0) {
			pos++;
			continue;
		}

		if ((error = FUNC3(index, pos)) < 0)
			break;
	}

	return error;
}