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
struct rev_info {scalar_t__ ignore_missing; int /*<<< orphan*/  prefix; int /*<<< orphan*/  repo; } ;
struct object_id {int dummy; } ;
struct object_context {int /*<<< orphan*/  path; int /*<<< orphan*/  mode; } ;
struct object {int dummy; } ;

/* Variables and functions */
 int BOTTOM ; 
 unsigned int GET_OID_COMMITTISH ; 
 unsigned int GET_OID_RECORD_PATH ; 
 unsigned int REVARG_CANNOT_BE_FILENAME ; 
 unsigned int REVARG_COMMITTISH ; 
 int /*<<< orphan*/  REV_CMD_REV ; 
 int UNINTERESTING ; 
 scalar_t__ FUNC0 (struct rev_info*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,struct object*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,struct object*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,unsigned int,struct object_id*,struct object_context*) ; 
 struct object* FUNC5 (struct rev_info*,char const*,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,struct rev_info*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 char* FUNC8 (char const*,char*) ; 
 int FUNC9 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*) ; 

int FUNC11(const char *arg_, struct rev_info *revs, int flags, unsigned revarg_opt)
{
	struct object_context oc;
	char *mark;
	struct object *object;
	struct object_id oid;
	int local_flags;
	const char *arg = arg_;
	int cant_be_filename = revarg_opt & REVARG_CANNOT_BE_FILENAME;
	unsigned get_sha1_flags = GET_OID_RECORD_PATH;

	flags = flags & UNINTERESTING ? flags | BOTTOM : flags & ~BOTTOM;

	if (!cant_be_filename && !FUNC7(arg, "..")) {
		/*
		 * Just ".."?  That is not a range but the
		 * pathspec for the parent directory.
		 */
		return -1;
	}

	if (!FUNC6(arg, revs, flags, revarg_opt))
		return 0;

	mark = FUNC8(arg, "^@");
	if (mark && !mark[2]) {
		*mark = 0;
		if (FUNC0(revs, arg, flags, 0))
			return 0;
		*mark = '^';
	}
	mark = FUNC8(arg, "^!");
	if (mark && !mark[2]) {
		*mark = 0;
		if (!FUNC0(revs, arg, flags ^ (UNINTERESTING | BOTTOM), 0))
			*mark = '^';
	}
	mark = FUNC8(arg, "^-");
	if (mark) {
		int exclude_parent = 1;

		if (mark[2]) {
			char *end;
			exclude_parent = FUNC9(mark + 2, &end, 10);
			if (*end != '\0' || !exclude_parent)
				return -1;
		}

		*mark = 0;
		if (!FUNC0(revs, arg, flags ^ (UNINTERESTING | BOTTOM), exclude_parent))
			*mark = '^';
	}

	local_flags = 0;
	if (*arg == '^') {
		local_flags = UNINTERESTING | BOTTOM;
		arg++;
	}

	if (revarg_opt & REVARG_COMMITTISH)
		get_sha1_flags |= GET_OID_COMMITTISH;

	if (FUNC4(revs->repo, arg, get_sha1_flags, &oid, &oc))
		return revs->ignore_missing ? 0 : -1;
	if (!cant_be_filename)
		FUNC10(revs->prefix, arg);
	object = FUNC5(revs, arg, &oid, flags ^ local_flags);
	if (!object)
		return revs->ignore_missing ? 0 : -1;
	FUNC2(revs, object, arg_, REV_CMD_REV, flags ^ local_flags);
	FUNC1(revs, object, arg, oc.mode, oc.path);
	FUNC3(oc.path);
	return 0;
}