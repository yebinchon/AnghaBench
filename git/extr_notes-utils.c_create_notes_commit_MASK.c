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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct notes_tree {int /*<<< orphan*/  ref; int /*<<< orphan*/  initialized; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit_list**) ; 
 scalar_t__ FUNC2 (char const*,size_t,struct object_id*,struct commit_list*,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct commit* FUNC4 (struct repository*,struct object_id*) ; 
 scalar_t__ FUNC5 (struct commit*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC7 (struct notes_tree*,struct object_id*) ; 

void FUNC8(struct repository *r,
			 struct notes_tree *t,
			 struct commit_list *parents,
			 const char *msg, size_t msg_len,
			 struct object_id *result_oid)
{
	struct object_id tree_oid;

	FUNC0(t->initialized);

	if (FUNC7(t, &tree_oid))
		FUNC3("Failed to write notes tree to database");

	if (!parents) {
		/* Deduce parent commit from t->ref */
		struct object_id parent_oid;
		if (!FUNC6(t->ref, &parent_oid)) {
			struct commit *parent = FUNC4(r, &parent_oid);
			if (FUNC5(parent))
				FUNC3("Failed to find/parse commit %s", t->ref);
			FUNC1(parent, &parents);
		}
		/* else: t->ref points to nothing, assume root/orphan commit */
	}

	if (FUNC2(msg, msg_len, &tree_oid, parents, result_oid, NULL,
			NULL))
		FUNC3("Failed to commit notes tree to database");
}