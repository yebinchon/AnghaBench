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
struct worktree {scalar_t__ head_ref; } ;
struct ref_to_worktree_entry {int /*<<< orphan*/  ent; struct worktree* wt; } ;
struct hashmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hashmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct ref_to_worktree_entry* FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct hashmap *map, struct worktree **worktrees)
{
	int i;

	for (i = 0; worktrees[i]; i++) {
		if (worktrees[i]->head_ref) {
			struct ref_to_worktree_entry *entry;
			entry = FUNC3(sizeof(*entry));
			entry->wt = worktrees[i];
			FUNC1(&entry->ent,
					FUNC2(worktrees[i]->head_ref));

			FUNC0(map, &entry->ent);
		}
	}
}