#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct todo_list {int dummy; } ;
struct repository {int dummy; } ;
struct replay_opts {scalar_t__ action; TYPE_5__* revs; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_11__ {int nr; TYPE_3__* rev; } ;
struct TYPE_9__ {int nr; TYPE_1__* objects; } ;
struct TYPE_12__ {TYPE_4__ cmdline; scalar_t__ no_walk; TYPE_2__ pending; } ;
struct TYPE_10__ {scalar_t__ whence; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ REPLAY_REVERT ; 
 scalar_t__ REV_CMD_REV ; 
 struct todo_list TODO_LIST_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (struct repository*) ; 
 int FUNC4 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (char const*,struct object_id*) ; 
 struct commit* FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (struct repository*,struct object_id*,int) ; 
 int FUNC8 (struct repository*,struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct object_id*) ; 
 int FUNC10 (struct repository*,struct todo_list*,struct replay_opts*) ; 
 scalar_t__ FUNC11 (TYPE_5__*) ; 
 scalar_t__ FUNC12 (struct repository*,struct replay_opts*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct replay_opts*) ; 
 int FUNC15 (struct repository*,struct commit*,struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (struct todo_list*) ; 
 char* FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ FUNC20 (struct todo_list*,struct replay_opts*) ; 

int FUNC21(struct repository *r,
			     struct replay_opts *opts)
{
	struct todo_list todo_list = TODO_LIST_INIT;
	struct object_id oid;
	int i, res;

	FUNC2(opts->revs);
	if (FUNC12(r, opts))
		return -1;

	for (i = 0; i < opts->revs->pending.nr; i++) {
		struct object_id oid;
		const char *name = opts->revs->pending.objects[i].name;

		/* This happens when using --stdin. */
		if (!FUNC16(name))
			continue;

		if (!FUNC5(name, &oid)) {
			if (!FUNC7(r, &oid, 1)) {
				enum object_type type = FUNC8(r,
									&oid,
									NULL);
				return FUNC4(FUNC1("%s: can't cherry-pick a %s"),
					name, FUNC18(type));
			}
		} else
			return FUNC4(FUNC1("%s: bad revision"), name);
	}

	/*
	 * If we were called as "git cherry-pick <commit>", just
	 * cherry-pick/revert it, set CHERRY_PICK_HEAD /
	 * REVERT_HEAD, and don't touch the sequencer state.
	 * This means it is possible to cherry-pick in the middle
	 * of a cherry-pick sequence.
	 */
	if (opts->revs->cmdline.nr == 1 &&
	    opts->revs->cmdline.rev->whence == REV_CMD_REV &&
	    opts->revs->no_walk &&
	    !opts->revs->cmdline.rev->flags) {
		struct commit *cmit;
		if (FUNC11(opts->revs))
			return FUNC4(FUNC1("revision walk setup failed"));
		cmit = FUNC6(opts->revs);
		if (!cmit)
			return FUNC4(FUNC1("empty commit set passed"));
		if (FUNC6(opts->revs))
			FUNC0("unexpected extra commit from walk");
		return FUNC15(r, cmit, opts);
	}

	/*
	 * Start a new cherry-pick/ revert sequence; but
	 * first, make sure that an existing one isn't in
	 * progress
	 */

	if (FUNC20(&todo_list, opts) ||
			FUNC3(r) < 0)
		return -1;
	if (FUNC5("HEAD", &oid) && (opts->action == REPLAY_REVERT))
		return FUNC4(FUNC1("can't revert as initial commit"));
	if (FUNC13(FUNC9(&oid)))
		return -1;
	if (FUNC14(opts))
		return -1;
	FUNC19();
	res = FUNC10(r, &todo_list, opts);
	FUNC17(&todo_list);
	return res;
}