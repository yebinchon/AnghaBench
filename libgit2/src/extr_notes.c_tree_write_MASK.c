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
typedef  int /*<<< orphan*/  git_treebuilder ;
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
	git_tree **out,
	git_repository *repo,
	git_tree *source_tree,
	const git_oid *object_oid,
	const char *treeentry_name,
	unsigned int attributes)
{
	int error;
	git_treebuilder *tb = NULL;
	const git_tree_entry *entry;
	git_oid tree_oid;

	if ((error = FUNC3(&tb, repo, source_tree)) < 0)
		goto cleanup;

	if (object_oid) {
		if ((error = FUNC2(
				&entry, tb, treeentry_name, object_oid, attributes)) < 0)
			goto cleanup;
	} else {
		if ((error = FUNC4(tb, treeentry_name)) < 0)
			goto cleanup;
	}

	if ((error = FUNC5(&tree_oid, tb)) < 0)
		goto cleanup;

	error = FUNC0(out, repo, &tree_oid);

cleanup:
	FUNC1(tb);
	return error;
}