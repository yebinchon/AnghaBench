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
struct object_id {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_2__ object; TYPE_1__* parents; } ;
struct TYPE_6__ {struct object_id* empty_tree; } ;
struct TYPE_4__ {struct commit* item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct object_id* FUNC2 (struct commit*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct object_id const*,struct object_id*) ; 
 scalar_t__ FUNC5 (struct commit*) ; 
 TYPE_3__* the_hash_algo ; 

__attribute__((used)) static int FUNC6(struct commit *commit)
{
	const struct object_id *ptree_oid;

	if (FUNC5(commit))
		return FUNC1(FUNC0("could not parse commit %s"),
			     FUNC3(&commit->object.oid));
	if (commit->parents) {
		struct commit *parent = commit->parents->item;
		if (FUNC5(parent))
			return FUNC1(FUNC0("could not parse parent commit %s"),
				FUNC3(&parent->object.oid));
		ptree_oid = FUNC2(parent);
	} else {
		ptree_oid = the_hash_algo->empty_tree; /* commit is root */
	}

	return FUNC4(ptree_oid, FUNC2(commit));
}