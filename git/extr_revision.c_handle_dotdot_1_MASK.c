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
struct rev_info {int /*<<< orphan*/  repo; int /*<<< orphan*/  prefix; } ;
struct object_id {int dummy; } ;
struct object_context {int /*<<< orphan*/  path; int /*<<< orphan*/  mode; } ;
struct object {unsigned int flags; int /*<<< orphan*/  oid; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int BOTTOM ; 
 unsigned int GET_OID_COMMITTISH ; 
 unsigned int GET_OID_RECORD_PATH ; 
 int /*<<< orphan*/  REV_CMD_LEFT ; 
 int /*<<< orphan*/  REV_CMD_MERGE_BASE ; 
 int /*<<< orphan*/  REV_CMD_RIGHT ; 
 int SYMMETRIC_LEFT ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct commit_list*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,struct object*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,struct object*,char const*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct rev_info*,struct commit_list*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (char const*,char*,struct rev_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct commit_list*) ; 
 struct commit_list* FUNC6 (struct commit*,struct commit*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,unsigned int,struct object_id*,struct object_context*) ; 
 struct commit* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct object* FUNC9 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC11(const char *arg, char *dotdot,
			   struct rev_info *revs, int flags,
			   int cant_be_filename,
			   struct object_context *a_oc,
			   struct object_context *b_oc)
{
	const char *a_name, *b_name;
	struct object_id a_oid, b_oid;
	struct object *a_obj, *b_obj;
	unsigned int a_flags, b_flags;
	int symmetric = 0;
	unsigned int flags_exclude = flags ^ (UNINTERESTING | BOTTOM);
	unsigned int oc_flags = GET_OID_COMMITTISH | GET_OID_RECORD_PATH;

	a_name = arg;
	if (!*a_name)
		a_name = "HEAD";

	b_name = dotdot + 2;
	if (*b_name == '.') {
		symmetric = 1;
		b_name++;
	}
	if (!*b_name)
		b_name = "HEAD";

	if (FUNC7(revs->repo, a_name, oc_flags, &a_oid, a_oc) ||
	    FUNC7(revs->repo, b_name, oc_flags, &b_oid, b_oc))
		return -1;

	if (!cant_be_filename) {
		*dotdot = '.';
		FUNC10(revs->prefix, arg);
		*dotdot = '\0';
	}

	a_obj = FUNC9(revs->repo, &a_oid);
	b_obj = FUNC9(revs->repo, &b_oid);
	if (!a_obj || !b_obj)
		return FUNC4(arg, dotdot, revs, symmetric);

	if (!symmetric) {
		/* just A..B */
		b_flags = flags;
		a_flags = flags_exclude;
	} else {
		/* A...B -- find merge bases between the two */
		struct commit *a, *b;
		struct commit_list *exclude;

		a = FUNC8(revs->repo, &a_obj->oid);
		b = FUNC8(revs->repo, &b_obj->oid);
		if (!a || !b)
			return FUNC4(arg, dotdot, revs, symmetric);

		exclude = FUNC6(a, b);
		FUNC3(revs, exclude, REV_CMD_MERGE_BASE,
				     flags_exclude);
		FUNC0(revs, exclude, flags_exclude);
		FUNC5(exclude);

		b_flags = flags;
		a_flags = flags | SYMMETRIC_LEFT;
	}

	a_obj->flags |= a_flags;
	b_obj->flags |= b_flags;
	FUNC2(revs, a_obj, a_name, REV_CMD_LEFT, a_flags);
	FUNC2(revs, b_obj, b_name, REV_CMD_RIGHT, b_flags);
	FUNC1(revs, a_obj, a_name, a_oc->mode, a_oc->path);
	FUNC1(revs, b_obj, b_name, b_oc->mode, b_oc->path);
	return 0;
}