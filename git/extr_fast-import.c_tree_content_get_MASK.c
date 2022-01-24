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
struct tree_entry {struct tree_content* tree; TYPE_2__* versions; TYPE_1__* name; } ;
struct tree_content {unsigned int entry_count; struct tree_entry** entries; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; } ;
struct TYPE_3__ {unsigned int str_len; int /*<<< orphan*/  str_dat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct tree_content* FUNC2 (struct tree_content*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tree_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct tree_entry*,struct tree_entry*,int) ; 
 char* FUNC7 (char const*,char) ; 

__attribute__((used)) static int FUNC8(
	struct tree_entry *root,
	const char *p,
	struct tree_entry *leaf,
	int allow_root)
{
	struct tree_content *t;
	const char *slash1;
	unsigned int i, n;
	struct tree_entry *e;

	slash1 = FUNC7(p, '/');
	n = slash1 - p;
	if (!n && !allow_root)
		FUNC1("Empty path component found in input");

	if (!root->tree)
		FUNC5(root);

	if (!n) {
		e = root;
		goto found_entry;
	}

	t = root->tree;
	for (i = 0; i < t->entry_count; i++) {
		e = t->entries[i];
		if (e->name->str_len == n && !FUNC3(p, e->name->str_dat, n)) {
			if (!*slash1)
				goto found_entry;
			if (!FUNC0(e->versions[1].mode))
				return 0;
			if (!e->tree)
				FUNC5(e);
			return FUNC8(e, slash1 + 1, leaf, 0);
		}
	}
	return 0;

found_entry:
	FUNC6(leaf, e, sizeof(*leaf));
	if (e->tree && FUNC4(&e->versions[1].oid))
		leaf->tree = FUNC2(e->tree);
	else
		leaf->tree = NULL;
	return 1;
}