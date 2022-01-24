#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct merge_msg_entry {int written; TYPE_4__ const* merge_head; } ;
struct TYPE_18__ {scalar_t__ length; } ;
typedef  TYPE_1__ git_vector ;
struct TYPE_19__ {int /*<<< orphan*/  gitdir; } ;
typedef  TYPE_2__ git_repository ;
typedef  int /*<<< orphan*/  git_filebuf ;
struct TYPE_20__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;
struct TYPE_21__ {int /*<<< orphan*/  id_str; } ;
typedef  TYPE_4__ git_annotated_commit ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct merge_msg_entry*) ; 
 int /*<<< orphan*/  GIT_FILEBUF_CREATE_LEADING_DIRS ; 
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  GIT_MERGE_FILE_MODE ; 
 int /*<<< orphan*/  GIT_MERGE_MSG_FILE ; 
 TYPE_1__ GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct merge_msg_entry* FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct merge_msg_entry*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_1__*,struct merge_msg_entry*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct merge_msg_entry*) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_1__*,char) ; 
 int FUNC16 (int /*<<< orphan*/ *,TYPE_1__*,char) ; 
 int FUNC17 (int /*<<< orphan*/ *,TYPE_1__*,char) ; 
 int FUNC18 (int /*<<< orphan*/ *,TYPE_1__*,char) ; 
 int /*<<< orphan*/  msg_entry_is_branch ; 
 int /*<<< orphan*/  FUNC19 (struct merge_msg_entry*) ; 
 int /*<<< orphan*/  msg_entry_is_remote ; 
 int /*<<< orphan*/  msg_entry_is_tag ; 
 int /*<<< orphan*/  msg_entry_is_tracking ; 

__attribute__((used)) static int FUNC20(
	git_repository *repo,
	const git_annotated_commit *heads[],
	size_t heads_len)
{
	git_filebuf file = GIT_FILEBUF_INIT;
	git_buf file_path = GIT_BUF_INIT;
	struct merge_msg_entry *entries;
	git_vector matching = GIT_VECTOR_INIT;
	size_t i;
	char sep = 0;
	int error = 0;

	FUNC1(repo && heads);

	entries = FUNC2(heads_len, sizeof(struct merge_msg_entry));
	FUNC0(entries);

	if (FUNC12(&matching, heads_len, NULL) < 0) {
		FUNC3(entries);
		return -1;
	}

	for (i = 0; i < heads_len; i++)
		entries[i].merge_head = heads[i];

	if ((error = FUNC5(&file_path, repo->gitdir, GIT_MERGE_MSG_FILE)) < 0 ||
		(error = FUNC8(&file, file_path.ptr, GIT_FILEBUF_CREATE_LEADING_DIRS, GIT_MERGE_FILE_MODE)) < 0 ||
		(error = FUNC10(&file, "Merge ", 6)) < 0)
		goto cleanup;

	/*
	 * This is to emulate the format of MERGE_MSG by core git.
	 *
	 * Core git will write all the commits specified by OID, in the order
	 * provided, until the first named branch or tag is reached, at which
	 * point all branches will be written in the order provided, then all
	 * tags, then all remote tracking branches and finally all commits that
	 * were specified by OID that were not already written.
	 *
	 * Yes.  Really.
	 */
	for (i = 0; i < heads_len; i++) {
		if (!FUNC19(&entries[i]))
			break;

		if ((error = FUNC9(&file,
			"%scommit '%s'", (i > 0) ? "; " : "",
			entries[i].merge_head->id_str)) < 0)
			goto cleanup;

		entries[i].written = 1;
	}

	if (i)
		sep = ';';

	if ((error = FUNC13(&matching, entries, heads_len, msg_entry_is_branch)) < 0 ||
		(error = FUNC15(&file, &matching, sep)) < 0)
		goto cleanup;

	if (matching.length)
		sep =',';

	if ((error = FUNC13(&matching, entries, heads_len, msg_entry_is_tracking)) < 0 ||
		(error = FUNC18(&file, &matching, sep)) < 0)
		goto cleanup;

	if (matching.length)
		sep =',';

	if ((error = FUNC13(&matching, entries, heads_len, msg_entry_is_tag)) < 0 ||
		(error = FUNC17(&file, &matching, sep)) < 0)
		goto cleanup;

	if (matching.length)
		sep =',';

	/* We should never be called with multiple remote branches, but handle
	 * it in case we are... */
	while ((error = FUNC13(&matching, entries, heads_len, msg_entry_is_remote)) > 0) {
		if ((error = FUNC16(&file, &matching, sep)) < 0)
			goto cleanup;

		if (matching.length)
			sep =',';
	}

	if (error < 0)
		goto cleanup;

	for (i = 0; i < heads_len; i++) {
		if (FUNC14(&entries[i]))
			continue;

		if ((error = FUNC9(&file, "; commit '%s'",
			entries[i].merge_head->id_str)) < 0)
			goto cleanup;
	}

	if ((error = FUNC9(&file, "\n")) < 0 ||
		(error = FUNC7(&file)) < 0)
		goto cleanup;

cleanup:
	if (error < 0)
		FUNC6(&file);

	FUNC4(&file_path);

	FUNC11(&matching);
	FUNC3(entries);

	return error;
}