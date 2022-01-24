#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ dirty; int /*<<< orphan*/  stamp; int /*<<< orphan*/  tree_pool; int /*<<< orphan*/ * tree; int /*<<< orphan*/  index_file_path; int /*<<< orphan*/  on_disk; } ;
typedef  TYPE_1__ git_index ;
typedef  int /*<<< orphan*/  git_futils_filestamp ;
struct TYPE_11__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_INDEX ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(git_index *index, int force)
{
	int error = 0, updated;
	git_buf buffer = GIT_BUF_INIT;
	git_futils_filestamp stamp = index->stamp;

	if (!index->index_file_path)
		return FUNC1(-1,
			"failed to read index: The index is in-memory only");

	index->on_disk = FUNC8(index->index_file_path);

	if (!index->on_disk) {
		if (force && (error = FUNC7(index)) < 0)
			return error;

		index->dirty = 0;
		return 0;
	}

	if ((updated = FUNC4(&stamp, index->index_file_path) < 0) ||
	    ((updated = FUNC0(index)) < 0)) {
		FUNC3(
			GIT_ERROR_INDEX,
			"failed to read index: '%s' no longer exists",
			index->index_file_path);
		return updated;
	}

	if (!updated && !force)
		return 0;

	error = FUNC6(&buffer, index->index_file_path);
	if (error < 0)
		return error;

	index->tree = NULL;
	FUNC9(&index->tree_pool);

	error = FUNC7(index);

	if (!error)
		error = FUNC10(index, buffer.ptr, buffer.size);

	if (!error) {
		FUNC5(&index->stamp, &stamp);
		index->dirty = 0;
	}

	FUNC2(&buffer);
	return error;
}