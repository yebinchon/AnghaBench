#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
	git_oid oid, check;
	git_commit *commit;
	git_tree *tree;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	FUNC1(FUNC8(&oid, g_repo, "refs/heads/branch1"));
	FUNC1(FUNC4(&commit, g_repo, &oid));
	FUNC1(FUNC5(&tree, commit));

	opts.checkout_strategy = GIT_CHECKOUT_SAFE;

	FUNC1(FUNC2(g_repo, (git_object *)tree, &opts));

	FUNC9(tree);
	FUNC3(commit);

	/* Verify that the lenna.jpg file was checked out correctly */
	FUNC1(FUNC7(&check, "8ab005d890fe53f65eda14b23672f60d9f4ec5a1"));
	FUNC1(FUNC6(&oid, "binaryunicode/lenna.jpg", GIT_OBJECT_BLOB));
	FUNC0(&oid, &check);

	/* Verify that the text file was checked out correctly */
	FUNC1(FUNC7(&check, "965b223880dd4249e2c66a0cc0b4cffe1dc40f5a"));
	FUNC1(FUNC6(&oid, "binaryunicode/utf16_withbom_noeol_crlf.txt", GIT_OBJECT_BLOB));
	FUNC0(&oid, &check);
}