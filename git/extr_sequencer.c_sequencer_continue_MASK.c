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
struct todo_list {int /*<<< orphan*/  current; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 struct todo_list TODO_LIST_INIT ; 
 scalar_t__ FUNC0 (struct repository*,struct replay_opts*,struct todo_list*) ; 
 int FUNC1 (struct repository*) ; 
 int FUNC2 (struct repository*,struct replay_opts*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC6 (struct repository*) ; 
 int /*<<< orphan*/  FUNC7 (struct repository*) ; 
 scalar_t__ FUNC8 (struct repository*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC10 (struct todo_list*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct repository*,struct todo_list*,struct replay_opts*) ; 
 scalar_t__ FUNC12 (struct repository*,struct replay_opts*) ; 
 scalar_t__ FUNC13 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (struct replay_opts*) ; 
 int FUNC15 (struct repository*,struct todo_list*,struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC19 (struct todo_list*) ; 

int FUNC20(struct repository *r, struct replay_opts *opts)
{
	struct todo_list todo_list = TODO_LIST_INIT;
	int res;

	if (FUNC12(r, opts))
		return -1;

	if (FUNC14(opts))
		return -1;
	if (FUNC9(opts)) {
		if ((res = FUNC15(r, &todo_list, opts)))
			goto release_todo_list;
		if (FUNC0(r, opts, &todo_list))
			return -1;
	} else if (!FUNC3(FUNC5(opts)))
		return FUNC1(r);
	else if ((res = FUNC15(r, &todo_list, opts)))
		goto release_todo_list;

	if (!FUNC9(opts)) {
		/* Verify that the conflict has been resolved */
		if (FUNC3(FUNC6(r)) ||
		    FUNC3(FUNC7(r))) {
			res = FUNC1(r);
			if (res)
				goto release_todo_list;
		}
		if (FUNC8(r, "HEAD", NULL, 0)) {
			res = FUNC2(r, opts);
			goto release_todo_list;
		}
		todo_list.current++;
	} else if (FUNC3(FUNC16())) {
		struct strbuf buf = STRBUF_INIT;
		struct object_id oid;

		if (FUNC13(&buf, FUNC16(), 1) &&
		    !FUNC4(buf.buf, &oid))
			FUNC17(&oid, FUNC10(&todo_list, 0));
		FUNC18(&buf);
	}

	res = FUNC11(r, &todo_list, opts);
release_todo_list:
	FUNC19(&todo_list);
	return res;
}