#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct island_bitmap {int dummy; } ;
struct commit_list {TYPE_1__* item; struct commit_list* next; } ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct commit {struct commit_list* parents; TYPE_2__ object; } ;
typedef  scalar_t__ khiter_t ;
struct TYPE_6__ {int /*<<< orphan*/  object; } ;
struct TYPE_4__ {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct commit*) ; 
 int /*<<< orphan*/  island_marks ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct island_bitmap* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct commit*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct island_bitmap*) ; 

void FUNC6(struct commit *commit)
{
	khiter_t pos = FUNC2(island_marks, commit->object.oid);

	if (pos < FUNC1(island_marks)) {
		struct commit_list *p;
		struct island_bitmap *root_marks = FUNC3(island_marks, pos);

		FUNC4(commit);
		FUNC5(&FUNC0(commit)->object, root_marks);
		for (p = commit->parents; p; p = p->next)
			FUNC5(&p->item->object, root_marks);
	}
}