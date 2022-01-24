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
struct raw_object_store {int /*<<< orphan*/ * packed_git; int /*<<< orphan*/  packed_git_mru; scalar_t__ loaded_alternates; int /*<<< orphan*/ * odb_tail; scalar_t__ commit_graph_attempted; int /*<<< orphan*/ * commit_graph; int /*<<< orphan*/  replace_map; int /*<<< orphan*/  alternate_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct raw_object_store*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct raw_object_store*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct raw_object_store *o)
{
	FUNC0(o->alternate_db);

	FUNC5(o->replace_map, 1);
	FUNC0(o->replace_map);

	FUNC3(o->commit_graph);
	o->commit_graph = NULL;
	o->commit_graph_attempted = 0;

	FUNC4(o);
	o->odb_tail = NULL;
	o->loaded_alternates = 0;

	FUNC1(&o->packed_git_mru);
	FUNC2(o);
	o->packed_git = NULL;
}