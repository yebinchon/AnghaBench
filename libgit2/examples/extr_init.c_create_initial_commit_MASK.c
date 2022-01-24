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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(git_repository *repo)
{
	git_signature *sig;
	git_index *index;
	git_oid tree_id, commit_id;
	git_tree *tree;

	/** First use the config to initialize a commit signature for the user. */

	if (FUNC5(&sig, repo) < 0)
		FUNC0("Unable to create a commit signature.",
		      "Perhaps 'user.name' and 'user.email' are not set");

	/* Now let's create an empty tree for this commit */

	if (FUNC4(&index, repo) < 0)
		FUNC0("Could not open repository index", NULL);

	/**
	 * Outside of this example, you could call git_index_add_bypath()
	 * here to put actual files into the index.  For our purposes, we'll
	 * leave it empty for now.
	 */

	if (FUNC3(&tree_id, index) < 0)
		FUNC0("Unable to write initial tree from index", NULL);

	FUNC2(index);

	if (FUNC8(&tree, repo, &tree_id) < 0)
		FUNC0("Could not look up initial tree", NULL);

	/**
	 * Ready to create the initial commit.
	 *
	 * Normally creating a commit would involve looking up the current
	 * HEAD commit and making that be the parent of the initial commit,
	 * but here this is the first commit so there will be no parent.
	 */

	if (FUNC1(
			&commit_id, repo, "HEAD", sig, sig,
			NULL, "Initial commit", tree, 0) < 0)
		FUNC0("Could not create the initial commit", NULL);

	/** Clean up so we don't leak memory. */

	FUNC7(tree);
	FUNC6(sig);
}