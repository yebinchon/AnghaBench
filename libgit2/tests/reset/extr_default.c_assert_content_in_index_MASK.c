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
struct TYPE_6__ {size_t count; int /*<<< orphan*/ * strings; } ;
typedef  TYPE_1__ git_strarray ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ git_index_entry ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  _index ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
	git_strarray *pathspecs,
	bool should_exist,
	git_strarray *expected_shas)
{
	size_t i, pos;
	int error;

	for (i = 0; i < pathspecs->count; i++) {
		error = FUNC3(&pos, _index, pathspecs->strings[i]);

		if (should_exist) {
			const git_index_entry *entry;

			FUNC0(error != GIT_ENOTFOUND);

			entry = FUNC4(_index, pos);
			FUNC0(entry != NULL);

			if (!expected_shas)
				continue;

			FUNC2(FUNC5(&entry->id, expected_shas->strings[i]));
		} else
			FUNC1(should_exist, error != GIT_ENOTFOUND);
	}
}