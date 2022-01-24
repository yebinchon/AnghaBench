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
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(void)
{
	git_oid oid;
	git_oid original_oid;
	git_tree *tree;
	git_commit *commit;
	git_signature *s;

	FUNC6(&oid, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
	FUNC2(FUNC5(&commit, _repo, &oid));

	FUNC6(&oid, "944c0f6e4dfa41595e6eb3ceecdb14f50fe18162");
	FUNC2(FUNC11(&tree, _repo, &oid));

	FUNC2(FUNC9(&s, "alice", "alice@example.com"));

	FUNC2(FUNC7(&original_oid, _repo, "HEAD"));

	FUNC1(FUNC3(&oid, _repo, "HEAD", s, s,
				      NULL, "initial commit", tree, 0, NULL));

	FUNC2(FUNC7(&oid, _repo, "HEAD"));

	FUNC0(&oid, &original_oid);

	FUNC10(tree);
	FUNC4(commit);
	FUNC8(s);
}