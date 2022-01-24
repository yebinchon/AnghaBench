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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_status_list ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,int) ; 

void FUNC25(void)
{
	git_repository *repo;
	git_status_list *status;
	git_diff *diff;
	git_index *index;
	git_tree *tree;

	FUNC2(FUNC16(&repo, "mixed-submodule", 0));
	FUNC1("mixed-submodule/.gitmodules", "[submodule \"sub\"]\n path = sub\n url = ../foo\n");
	FUNC2(FUNC24("mixed-submodule/sub", 0777));
	FUNC1("mixed-submodule/sub/file", "");

	/* Create the commit with sub/file as a file, and an entry for sub in the modules list */
	{
		git_oid tree_id, commit_id;
		git_signature *sig;
		git_reference *ref;

		FUNC2(FUNC15(&index, repo));
		FUNC2(FUNC8(index, ".gitmodules"));
		FUNC2(FUNC8(index, "sub/file"));
		FUNC2(FUNC10(index));
		FUNC2(FUNC11(&tree_id, index));
		FUNC2(FUNC18(&sig, "Sloppy Submoduler", "sloppy@example.com"));
		FUNC2(FUNC23(&tree, repo, &tree_id));
		FUNC2(FUNC3(&commit_id, repo, NULL, sig, sig, NULL, "message", tree, 0, NULL));
		FUNC2(FUNC12(&ref, repo, "refs/heads/master", &commit_id, 1, "commit: foo"));
		FUNC13(ref);
		FUNC17(sig);
	}

	FUNC2(FUNC7(&diff, repo, tree, index, NULL));
	FUNC0(0, FUNC6(diff));
	FUNC4(diff);

	FUNC2(FUNC5(&diff, repo, index, NULL));
	FUNC0(0, FUNC6(diff));
	FUNC4(diff);

	FUNC2(FUNC21(&status, repo, NULL));
	FUNC0(0, FUNC19(status));

	FUNC20(status);
	FUNC9(index);
	FUNC22(tree);
	FUNC14(repo);
}