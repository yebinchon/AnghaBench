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
struct strbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct todo_list {struct strbuf buf; } ;
struct todo_item {scalar_t__ offset_in_buf; scalar_t__ flags; scalar_t__ arg_offset; scalar_t__ arg_len; int /*<<< orphan*/ * commit; int /*<<< orphan*/  command; } ;
struct string_list {scalar_t__ nr; } ;
struct repository {int dummy; } ;
struct replay_opts {scalar_t__ allow_ff; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {struct object_id oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 struct todo_list TODO_LIST_INIT ; 
 unsigned int TODO_LIST_SHORTEN_IDS ; 
 int /*<<< orphan*/  TODO_NOOP ; 
 char* FUNC0 (char*) ; 
 struct todo_item* FUNC1 (struct todo_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct replay_opts*) ; 
 scalar_t__ FUNC3 (struct repository*,struct replay_opts*,char const*,struct object_id*,char const*) ; 
 scalar_t__ FUNC4 (struct todo_list*) ; 
 int FUNC5 (struct repository*,struct todo_list*,struct todo_list*,char const*,char const*,unsigned int) ; 
 char* edit_todo_list_advice ; 
 int FUNC6 (char*) ; 
 int FUNC7 (char*,char const*) ; 
 char* FUNC8 (struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC10 () ; 
 scalar_t__ FUNC11 (struct repository*,char*,char*,int,int) ; 
 int FUNC12 (struct repository*,struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC13 (struct replay_opts*) ; 
 scalar_t__ FUNC14 (struct repository*,struct todo_list*,struct object_id*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (struct todo_list*,struct string_list*) ; 
 scalar_t__ FUNC16 (struct todo_list*,struct todo_list*) ; 
 scalar_t__ FUNC17 (struct repository*,int /*<<< orphan*/ ,struct todo_list*) ; 
 scalar_t__ FUNC18 (struct todo_list*) ; 
 int /*<<< orphan*/  FUNC19 (struct todo_list*) ; 
 scalar_t__ FUNC20 (struct repository*,struct todo_list*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned int) ; 

int FUNC21(struct repository *r, struct replay_opts *opts, unsigned flags,
		    const char *shortrevisions, const char *onto_name,
		    struct commit *onto, const char *orig_head,
		    struct string_list *commands, unsigned autosquash,
		    struct todo_list *todo_list)
{
	const char *shortonto, *todo_file = FUNC10();
	struct todo_list new_todo = TODO_LIST_INIT;
	struct strbuf *buf = &todo_list->buf;
	struct object_id oid = onto->object.oid;
	int res;

	shortonto = FUNC8(&oid, DEFAULT_ABBREV);

	if (buf->len == 0) {
		struct todo_item *item = FUNC1(todo_list);
		item->command = TODO_NOOP;
		item->commit = NULL;
		item->arg_len = item->arg_offset = item->flags = item->offset_in_buf = 0;
	}

	if (autosquash && FUNC18(todo_list))
		return -1;

	if (commands->nr)
		FUNC15(todo_list, commands);

	if (FUNC4(todo_list) == 0) {
		FUNC2(opts);
		FUNC13(opts);

		return FUNC6(FUNC0("nothing to do"));
	}

	res = FUNC5(r, todo_list, &new_todo, shortrevisions,
			     shortonto, flags);
	if (res == -1)
		return -1;
	else if (res == -2) {
		FUNC2(opts);
		FUNC13(opts);

		return -1;
	} else if (res == -3) {
		FUNC2(opts);
		FUNC13(opts);
		FUNC19(&new_todo);

		return FUNC6(FUNC0("nothing to do"));
	}

	if (FUNC17(r, new_todo.buf.buf, &new_todo) ||
	    FUNC16(todo_list, &new_todo)) {
		FUNC9(stderr, "%s", FUNC0(edit_todo_list_advice));
		FUNC3(r, opts, onto_name, &onto->object.oid, orig_head);
		FUNC19(&new_todo);

		return -1;
	}

	if (opts->allow_ff && FUNC14(r, &new_todo, &oid)) {
		FUNC19(&new_todo);
		return FUNC6(FUNC0("could not skip unnecessary pick commands"));
	}

	if (FUNC20(r, &new_todo, todo_file, NULL, NULL, -1,
				    flags & ~(TODO_LIST_SHORTEN_IDS))) {
		FUNC19(&new_todo);
		return FUNC7(FUNC0("could not write '%s'"), todo_file);
	}

	FUNC19(&new_todo);

	if (FUNC3(r, opts, onto_name, &oid, orig_head))
		return -1;

	if (FUNC11(r, "rebase", "", 1, 1))
		return -1;

	return FUNC12(r, opts);
}