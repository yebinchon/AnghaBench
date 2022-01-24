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
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_repository ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC18(void)
{
	git_index *index;

	FUNC2(&cleanup_repository, "committed");

	/* Initialize the repository */
	FUNC1(FUNC13(&_repo, "committed", 0));

	/* Index will be automatically created when requested for a new repo */
	FUNC1(FUNC12(&index, _repo));

	/* Create a file so we can commit it
	 *
	 * If you are writing code outside the test suite, you can create this
	 * file any way that you like, such as:
	 *      FILE *fp = fopen("committed/file.txt", "w");
	 *      fputs("some stuff\n", fp);
	 *      fclose(fp);
	 * We like to use the help functions because they do error detection
	 * in a way that's easily compatible with our test suite.
	 */
	FUNC0("committed/file.txt", "some stuff\n");

	/* Add file to the index */
	FUNC1(FUNC7(index, "file.txt"));
	FUNC1(FUNC9(index));

	/* Intentionally not using cl_repo_commit_from_index here so this code
	 * can be used as an example of how an initial commit is typically
	 * made to a repository...
	 */

	/* Make sure we're ready to use git_signature_default :-) */
	{
		git_config *cfg, *local;
		FUNC1(FUNC11(&cfg, _repo));
		FUNC1(FUNC5(&local, cfg, GIT_CONFIG_LEVEL_LOCAL));
		FUNC1(FUNC6(local, "user.name", "Test User"));
		FUNC1(FUNC6(local, "user.email", "t@example.com"));
		FUNC4(local);
		FUNC4(cfg);
	}

	/* Create a commit with the new contents of the index */
	{
		git_signature *sig;
		git_oid tree_id, commit_id;
		git_tree *tree;

		FUNC1(FUNC14(&sig, _repo));
		FUNC1(FUNC10(&tree_id, index));
		FUNC1(FUNC17(&tree, _repo, &tree_id));

		FUNC1(FUNC3(
			&commit_id, _repo, "HEAD", sig, sig,
			NULL, "First", tree, 0));

		FUNC16(tree);
		FUNC15(sig);
	}

	FUNC8(index);
}