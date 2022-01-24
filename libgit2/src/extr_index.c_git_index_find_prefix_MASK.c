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
struct TYPE_6__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_7__ {int /*<<< orphan*/  entries; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_INDEX_STAGE_ANY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int FUNC4(size_t *at_pos, git_index *index, const char *prefix)
{
	int error = 0;
	size_t pos;
	const git_index_entry *entry;

	FUNC2(&pos, index, prefix, FUNC3(prefix), GIT_INDEX_STAGE_ANY);
	entry = FUNC1(&index->entries, pos);
	if (!entry || FUNC0(entry->path, prefix) != 0)
		error = GIT_ENOTFOUND;

	if (!error && at_pos)
		*at_pos = pos;

	return error;
}