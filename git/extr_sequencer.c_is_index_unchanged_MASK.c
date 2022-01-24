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
struct repository {struct index_state* index; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct object_id* FUNC2 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*) ; 
 struct commit* FUNC4 (struct repository*,struct object_id*) ; 
 int FUNC5 (struct object_id*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct commit*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct repository *r)
{
	struct object_id head_oid, *cache_tree_oid;
	struct commit *head_commit;
	struct index_state *istate = r->index;

	if (!FUNC7("HEAD", RESOLVE_REF_READING, &head_oid, NULL))
		return FUNC1(FUNC0("could not resolve HEAD commit"));

	head_commit = FUNC4(r, &head_oid);

	/*
	 * If head_commit is NULL, check_commit, called from
	 * lookup_commit, would have indicated that head_commit is not
	 * a commit object already.  parse_commit() will return failure
	 * without further complaints in such a case.  Otherwise, if
	 * the commit is invalid, parse_commit() will complain.  So
	 * there is nothing for us to say here.  Just return failure.
	 */
	if (FUNC6(head_commit))
		return -1;

	if (!(cache_tree_oid = FUNC2(istate)))
		return -1;

	return FUNC5(cache_tree_oid, FUNC3(head_commit));
}