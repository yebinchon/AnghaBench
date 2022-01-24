#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_14__ {int /*<<< orphan*/  tree_id; } ;
typedef  TYPE_1__ git_commit ;
struct TYPE_15__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;
typedef  int /*<<< orphan*/  git_array_oid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ARRAY_INIT ; 
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  commit_parent_from_commit ; 
 int FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*,char const*) ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 char* FUNC14 (char const*,char*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int FUNC16(
	git_oid *out,
	git_repository *repo,
	const char *commit_content,
	const char *signature,
	const char *signature_field)
{
	git_odb *odb;
	int error = 0;
	const char *field;
	const char *header_end;
	git_buf commit = GIT_BUF_INIT;
	git_commit *parsed;
	git_array_oid_t parents = GIT_ARRAY_INIT;

	/* The first step is to verify that all the tree and parents exist */
	parsed = FUNC3(1, sizeof(git_commit));
	FUNC0(parsed);
	if ((error = FUNC1(parsed, commit_content, FUNC13(commit_content), 0)) < 0)
		goto cleanup;

	if ((error = FUNC15(&parents, repo, &parsed->tree_id, commit_parent_from_commit, parsed, NULL, true)) < 0)
		goto cleanup;

	FUNC4(parents);

	/* Then we start appending by identifying the end of the commit header */
	header_end = FUNC14(commit_content, "\n\n");
	if (!header_end) {
		FUNC10(GIT_ERROR_INVALID, "malformed commit contents");
		error = -1;
		goto cleanup;
	}

	/* The header ends after the first LF */
	header_end++;
	FUNC7(&commit, commit_content, header_end - commit_content);

	if (signature != NULL) {
		field = signature_field ? signature_field : "gpgsig";
		FUNC2(&commit, field, signature);
	}

	FUNC8(&commit, header_end);

	if (FUNC6(&commit))
		return -1;

	if ((error = FUNC12(&odb, repo)) < 0)
		goto cleanup;

	if ((error = FUNC11(out, odb, commit.ptr, commit.size, GIT_OBJECT_COMMIT)) < 0)
		goto cleanup;

cleanup:
	FUNC9(parsed);
	FUNC5(&commit);
	return error;
}