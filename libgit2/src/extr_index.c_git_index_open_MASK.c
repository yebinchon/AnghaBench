#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int on_disk; int /*<<< orphan*/  tree_pool; int /*<<< orphan*/  version; int /*<<< orphan*/  reuc_search; int /*<<< orphan*/  entries_search_path; int /*<<< orphan*/  entries_search; int /*<<< orphan*/  entries_cmp_path; int /*<<< orphan*/  deleted; int /*<<< orphan*/  reuc; int /*<<< orphan*/  names; int /*<<< orphan*/  entries_map; int /*<<< orphan*/  entries; int /*<<< orphan*/  index_file_path; } ;
typedef  TYPE_1__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  INDEX_VERSION_NUMBER_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  conflict_name_cmp ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  git__strcmp_cb ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_index_entry_cmp ; 
 int /*<<< orphan*/  git_index_entry_srch ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  index_entry_srch_path ; 
 int /*<<< orphan*/  reuc_cmp ; 
 int /*<<< orphan*/  reuc_srch ; 

int FUNC12(git_index **index_out, const char *index_path)
{
	git_index *index;
	int error = -1;

	FUNC2(index_out);

	index = FUNC3(1, sizeof(git_index));
	FUNC0(index);

	FUNC10(&index->tree_pool, 1);

	if (index_path != NULL) {
		index->index_file_path = FUNC4(index_path);
		if (!index->index_file_path)
			goto fail;

		/* Check if index file is stored on disk already */
		if (FUNC8(index->index_file_path) == true)
			index->on_disk = 1;
	}

	if (FUNC11(&index->entries, 32, git_index_entry_cmp) < 0 ||
	    FUNC5(&index->entries_map) < 0 ||
	    FUNC11(&index->names, 8, conflict_name_cmp) < 0 ||
	    FUNC11(&index->reuc, 8, reuc_cmp) < 0 ||
	    FUNC11(&index->deleted, 8, git_index_entry_cmp) < 0)
		goto fail;

	index->entries_cmp_path = git__strcmp_cb;
	index->entries_search = git_index_entry_srch;
	index->entries_search_path = index_entry_srch_path;
	index->reuc_search = reuc_srch;
	index->version = INDEX_VERSION_NUMBER_DEFAULT;

	if (index_path != NULL && (error = FUNC7(index, true)) < 0)
		goto fail;

	*index_out = index;
	FUNC1(index);

	return 0;

fail:
	FUNC9(&index->tree_pool);
	FUNC6(index);
	return error;
}