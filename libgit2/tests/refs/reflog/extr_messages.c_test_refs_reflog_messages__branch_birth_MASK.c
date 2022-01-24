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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 char* GIT_HEAD_FILE ; 
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 size_t FUNC10 (int /*<<< orphan*/ ,char*) ; 

void FUNC11(void)
{
	git_signature *sig;
	git_oid id;
	git_tree *tree;
	git_reference *ref;
	const char *msg;
	size_t nentries, nentries_after;

	nentries = FUNC10(g_repo, GIT_HEAD_FILE);

	FUNC1(FUNC8(&sig, "me", "foo@example.com"));

	FUNC1(FUNC5(&ref, g_repo));
	FUNC1(FUNC4((git_object **) &tree, ref, GIT_OBJECT_TREE));

	FUNC1(FUNC6(g_repo, "refs/heads/orphan"));

	nentries_after = FUNC10(g_repo, GIT_HEAD_FILE);

	FUNC0(nentries, nentries_after);

	msg = "message 2";
	FUNC1(FUNC2(&id, g_repo, "HEAD", sig, sig, NULL, msg, tree, 0, NULL));

	FUNC0(1, FUNC10(g_repo, "refs/heads/orphan"));

	nentries_after = FUNC10(g_repo, GIT_HEAD_FILE);

	FUNC0(nentries + 1, nentries_after);

	FUNC7(sig);
	FUNC9(tree);
	FUNC3(ref);
}