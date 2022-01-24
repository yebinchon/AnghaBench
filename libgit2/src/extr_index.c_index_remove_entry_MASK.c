#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_10__ {int dirty; int /*<<< orphan*/  deleted; int /*<<< orphan*/  readers; int /*<<< orphan*/  entries; int /*<<< orphan*/  tree; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(git_index *index, size_t pos)
{
	int error = 0;
	git_index_entry *entry = FUNC3(&index->entries, pos);

	if (entry != NULL) {
		FUNC2(index->tree, entry->path);
		FUNC0(index, entry);
	}

	error = FUNC5(&index->entries, pos);

	if (!error) {
		if (FUNC1(&index->readers) > 0) {
			error = FUNC4(&index->deleted, entry);
		} else {
			FUNC6(entry);
		}

		index->dirty = 1;
	}

	return error;
}