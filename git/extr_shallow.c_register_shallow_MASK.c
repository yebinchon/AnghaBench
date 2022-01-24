#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_graft {int nr_parent; int /*<<< orphan*/  oid; } ;
struct TYPE_2__ {scalar_t__ parsed; } ;
struct commit {int /*<<< orphan*/ * parents; TYPE_1__ object; } ;

/* Variables and functions */
 struct commit* FUNC0 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct object_id const*) ; 
 int FUNC2 (struct repository*,struct commit_graft*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 
 struct commit_graft* FUNC3 (int) ; 

int FUNC4(struct repository *r, const struct object_id *oid)
{
	struct commit_graft *graft =
		FUNC3(sizeof(struct commit_graft));
	struct commit *commit = FUNC0(the_repository, oid);

	FUNC1(&graft->oid, oid);
	graft->nr_parent = -1;
	if (commit && commit->object.parsed)
		commit->parents = NULL;
	return FUNC2(r, graft, 0);
}