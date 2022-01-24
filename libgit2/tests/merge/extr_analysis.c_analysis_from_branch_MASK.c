#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_merge_preference_t ;
typedef  int /*<<< orphan*/  git_merge_analysis_t ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  GIT_REFS_HEADS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 

__attribute__((used)) static void FUNC9(
	git_merge_analysis_t *merge_analysis,
	git_merge_preference_t *merge_pref,
	const char *our_branchname,
	const char *their_branchname)
{
	git_buf our_refname = GIT_BUF_INIT;
	git_buf their_refname = GIT_BUF_INIT;
	git_reference *our_ref;
	git_reference *their_ref;
	git_annotated_commit *their_head;

	if (our_branchname != NULL) {
		FUNC0(FUNC5(&our_refname, "%s%s", GIT_REFS_HEADS_DIR, our_branchname));
		FUNC0(FUNC8(&our_ref, repo, FUNC3(&our_refname)));
	} else {
		FUNC0(FUNC8(&our_ref, repo, GIT_HEAD_FILE));
	}

	FUNC0(FUNC5(&their_refname, "%s%s", GIT_REFS_HEADS_DIR, their_branchname));

	FUNC0(FUNC8(&their_ref, repo, FUNC3(&their_refname)));
	FUNC0(FUNC2(&their_head, repo, their_ref));

	FUNC0(FUNC6(merge_analysis, merge_pref, repo, our_ref, (const git_annotated_commit **)&their_head, 1));

	FUNC4(&our_refname);
	FUNC4(&their_refname);
	FUNC1(their_head);
	FUNC7(our_ref);
	FUNC7(their_ref);
}