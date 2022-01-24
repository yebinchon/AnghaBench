#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  oid; } ;
typedef  TYPE_2__ git_tree_entry ;
struct TYPE_13__ {int /*<<< orphan*/  repo; } ;
struct TYPE_15__ {TYPE_1__ object; } ;
typedef  TYPE_3__ git_tree ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_TREE ; 
 TYPE_2__* FUNC0 (TYPE_3__ const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*) ; 
 int FUNC3 (TYPE_2__**,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char const*) ; 

int FUNC7(
	git_tree_entry **entry_out,
	const git_tree *root,
	const char *path)
{
	int error = 0;
	git_tree *subtree;
	const git_tree_entry *entry;
	size_t filename_len;

	/* Find how long is the current path component (i.e.
	 * the filename between two slashes */
	filename_len = FUNC6(path);

	if (filename_len == 0) {
		FUNC1(GIT_ERROR_TREE, "invalid tree path given");
		return GIT_ENOTFOUND;
	}

	entry = FUNC0(root, path, filename_len);

	if (entry == NULL) {
		FUNC1(GIT_ERROR_TREE,
			   "the path '%.*s' does not exist in the given tree", (int) filename_len, path);
		return GIT_ENOTFOUND;
	}

	switch (path[filename_len]) {
	case '/':
		/* If there are more components in the path...
		 * then this entry *must* be a tree */
		if (!FUNC2(entry)) {
			FUNC1(GIT_ERROR_TREE,
				   "the path '%.*s' exists but is not a tree", (int) filename_len, path);
			return GIT_ENOTFOUND;
		}

		/* If there's only a slash left in the path, we
		 * return the current entry; otherwise, we keep
		 * walking down the path */
		if (path[filename_len + 1] != '\0')
			break;
		/* fall through */
	case '\0':
		/* If there are no more components in the path, return
		 * this entry */
		return FUNC3(entry_out, entry);
	}

	if (FUNC5(&subtree, root->object.repo, entry->oid) < 0)
		return -1;

	error = FUNC7(
		entry_out,
		subtree,
		path + filename_len + 1
	);

	FUNC4(subtree);
	return error;
}