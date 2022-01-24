#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tree_entry {TYPE_2__* versions; struct tree_content* tree; TYPE_1__* name; } ;
struct tree_content {unsigned int entry_count; struct tree_entry** entries; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; scalar_t__ mode; } ;
struct TYPE_3__ {unsigned int str_len; int /*<<< orphan*/  str_dat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tree_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_entry*,struct tree_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tree_content*) ; 
 char* FUNC6 (char const*,char) ; 

__attribute__((used)) static int FUNC7(
	struct tree_entry *root,
	const char *p,
	struct tree_entry *backup_leaf,
	int allow_root)
{
	struct tree_content *t;
	const char *slash1;
	unsigned int i, n;
	struct tree_entry *e;

	slash1 = FUNC6(p, '/');
	n = slash1 - p;

	if (!root->tree)
		FUNC2(root);

	if (!*p && allow_root) {
		e = root;
		goto del_entry;
	}

	t = root->tree;
	for (i = 0; i < t->entry_count; i++) {
		e = t->entries[i];
		if (e->name->str_len == n && !FUNC1(p, e->name->str_dat, n)) {
			if (*slash1 && !FUNC0(e->versions[1].mode))
				/*
				 * If p names a file in some subdirectory, and a
				 * file or symlink matching the name of the
				 * parent directory of p exists, then p cannot
				 * exist and need not be deleted.
				 */
				return 1;
			if (!*slash1 || !FUNC0(e->versions[1].mode))
				goto del_entry;
			if (!e->tree)
				FUNC2(e);
			if (FUNC7(e, slash1 + 1, backup_leaf, 0)) {
				for (n = 0; n < e->tree->entry_count; n++) {
					if (e->tree->entries[n]->versions[1].mode) {
						FUNC4(&root->versions[1].oid);
						return 1;
					}
				}
				backup_leaf = NULL;
				goto del_entry;
			}
			return 0;
		}
	}
	return 0;

del_entry:
	if (backup_leaf)
		FUNC3(backup_leaf, e, sizeof(*backup_leaf));
	else if (e->tree)
		FUNC5(e->tree);
	e->tree = NULL;
	e->versions[1].mode = 0;
	FUNC4(&e->versions[1].oid);
	FUNC4(&root->versions[1].oid);
	return 1;
}