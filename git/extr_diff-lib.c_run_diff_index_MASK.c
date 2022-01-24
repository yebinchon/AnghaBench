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
struct TYPE_3__ {int nr; struct object_array_entry* objects; } ;
struct rev_info {int /*<<< orphan*/  diffopt; TYPE_1__ pending; } ;
struct object_array_entry {int /*<<< orphan*/  name; TYPE_2__* item; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct rev_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(struct rev_info *revs, int cached)
{
	struct object_array_entry *ent;

	if (revs->pending.nr != 1)
		FUNC0("run_diff_index must be passed exactly one tree");

	FUNC7();
	ent = revs->pending.objects;
	if (FUNC1(revs, &ent->item->oid, ent->name, cached))
		FUNC6(128);

	FUNC3(&revs->diffopt, "c/", cached ? "i/" : "w/");
	FUNC4();
	FUNC5(&revs->diffopt);
	FUNC2(&revs->diffopt);
	FUNC8("diff-index");
	return 0;
}