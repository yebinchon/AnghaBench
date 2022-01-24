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
struct object_array {int nr; TYPE_1__* objects; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit_graft {scalar_t__ nr_parent; } ;
struct commit_depth {int slab_count; int slab_size; int /*<<< orphan*/ ** slab; } ;
struct TYPE_4__ {scalar_t__ type; int flags; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_2__ object; struct commit_list* parents; } ;
struct TYPE_3__ {int /*<<< orphan*/  item; } ;

/* Variables and functions */
 int INFINITE_DEPTH ; 
 struct object_array OBJECT_ARRAY_INIT ; 
 scalar_t__ OBJ_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,struct object_array*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit_depth*) ; 
 int** FUNC2 (struct commit_depth*,struct commit*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*,struct commit_list**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct commit_depth*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct commit_graft* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct object_array*) ; 
 int /*<<< orphan*/  FUNC10 (struct commit*) ; 
 int /*<<< orphan*/  the_repository ; 
 int* FUNC11 (int) ; 

struct commit_list *FUNC12(struct object_array *heads, int depth,
		int shallow_flag, int not_shallow_flag)
{
	int i = 0, cur_depth = 0;
	struct commit_list *result = NULL;
	struct object_array stack = OBJECT_ARRAY_INIT;
	struct commit *commit = NULL;
	struct commit_graft *graft;
	struct commit_depth depths;

	FUNC6(&depths);
	while (commit || i < heads->nr || stack.nr) {
		struct commit_list *p;
		if (!commit) {
			if (i < heads->nr) {
				int **depth_slot;
				commit = (struct commit *)
					FUNC4(the_repository,
						  heads->objects[i++].item,
						  NULL, 0);
				if (!commit || commit->object.type != OBJ_COMMIT) {
					commit = NULL;
					continue;
				}
				depth_slot = FUNC2(&depths, commit);
				if (!*depth_slot)
					*depth_slot = FUNC11(sizeof(int));
				**depth_slot = 0;
				cur_depth = 0;
			} else {
				commit = (struct commit *)
					FUNC9(&stack);
				cur_depth = **FUNC2(&depths, commit);
			}
		}
		FUNC10(commit);
		cur_depth++;
		if ((depth != INFINITE_DEPTH && cur_depth >= depth) ||
		    (FUNC7(the_repository) && !commit->parents &&
		     (graft = FUNC8(the_repository, &commit->object.oid)) != NULL &&
		     graft->nr_parent < 0)) {
			FUNC3(commit, &result);
			commit->object.flags |= shallow_flag;
			commit = NULL;
			continue;
		}
		commit->object.flags |= not_shallow_flag;
		for (p = commit->parents, commit = NULL; p; p = p->next) {
			int **depth_slot = FUNC2(&depths, p->item);
			if (!*depth_slot) {
				*depth_slot = FUNC11(sizeof(int));
				**depth_slot = cur_depth;
			} else {
				if (cur_depth >= **depth_slot)
					continue;
				**depth_slot = cur_depth;
			}
			if (p->next)
				FUNC0(&p->item->object,
						NULL, &stack);
			else {
				commit = p->item;
				cur_depth = **FUNC2(&depths, commit);
			}
		}
	}
	for (i = 0; i < depths.slab_count; i++) {
		int j;

		if (!depths.slab[i])
			continue;
		for (j = 0; j < depths.slab_size; j++)
			FUNC5(depths.slab[i][j]);
	}
	FUNC1(&depths);

	return result;
}