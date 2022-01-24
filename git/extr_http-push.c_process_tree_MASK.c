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
struct tree_desc {int dummy; } ;
struct object {int flags; int /*<<< orphan*/  oid; } ;
struct tree {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; struct object object; } ;
struct object_list {int dummy; } ;
struct name_entry {int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int LOCAL ; 
#define  OBJ_BLOB 129 
#define  OBJ_TREE 128 
 int SEEN ; 
 int UNINTERESTING ; 
 struct object_list** FUNC0 (struct object*,struct object_list**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tree*) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tree* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct tree*) ; 
 struct object_list** FUNC9 (int /*<<< orphan*/ ,struct object_list**) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC10 (struct tree_desc*,struct name_entry*) ; 

__attribute__((used)) static struct object_list **FUNC11(struct tree *tree,
					 struct object_list **p)
{
	struct object *obj = &tree->object;
	struct tree_desc desc;
	struct name_entry entry;

	obj->flags |= LOCAL;

	if (obj->flags & (UNINTERESTING | SEEN))
		return p;
	if (FUNC8(tree) < 0)
		FUNC1("bad tree object %s", FUNC7(&obj->oid));

	obj->flags |= SEEN;
	p = FUNC0(obj, p);

	FUNC3(&desc, tree->buffer, tree->size);

	while (FUNC10(&desc, &entry))
		switch (FUNC6(entry.mode)) {
		case OBJ_TREE:
			p = FUNC11(FUNC5(the_repository, &entry.oid),
					 p);
			break;
		case OBJ_BLOB:
			p = FUNC9(FUNC4(the_repository, &entry.oid),
					 p);
			break;
		default:
			/* Subproject commit - not in this repository */
			break;
		}

	FUNC2(tree);
	return p;
}