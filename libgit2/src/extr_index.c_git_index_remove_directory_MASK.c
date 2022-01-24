#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_14__ {int /*<<< orphan*/  entries; } ;
typedef  TYPE_2__ git_index ;
struct TYPE_15__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_INDEX_STAGE_ANY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,char const*) ; 
 int FUNC4 (TYPE_3__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,size_t) ; 

int FUNC8(git_index *index, const char *dir, int stage)
{
	git_buf pfx = GIT_BUF_INIT;
	int error = 0;
	size_t pos;
	git_index_entry *entry;

	if (!(error = FUNC3(&pfx, dir)) &&
		!(error = FUNC4(&pfx)))
		FUNC6(&pos, index, pfx.ptr, pfx.size, GIT_INDEX_STAGE_ANY);

	while (!error) {
		entry = FUNC5(&index->entries, pos);
		if (!entry || FUNC1(entry->path, pfx.ptr) != 0)
			break;

		if (FUNC0(entry) != stage) {
			++pos;
			continue;
		}

		error = FUNC7(index, pos);

		/* removed entry at 'pos' so we don't need to increment */
	}

	FUNC2(&pfx);

	return error;
}