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
struct TYPE_2__ {scalar_t__ len; scalar_t__ buf; } ;
struct todo_list {int current; TYPE_1__ buf; } ;
struct replay_opts {int dummy; } ;
struct lock_file {int dummy; } ;

/* Variables and functions */
 struct lock_file LOCK_INIT ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct lock_file*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (struct todo_list*,int) ; 
 scalar_t__ FUNC6 (struct todo_list*,int) ; 
 int FUNC7 (struct todo_list*,int) ; 
 char* FUNC8 (struct replay_opts*) ; 
 int FUNC9 (struct lock_file*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct replay_opts*) ; 
 int FUNC11 (char const*,int,int) ; 
 char* FUNC12 () ; 
 scalar_t__ FUNC13 (int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct todo_list *todo_list, struct replay_opts *opts)
{
	struct lock_file todo_lock = LOCK_INIT;
	const char *todo_path = FUNC8(opts);
	int next = todo_list->current, offset, fd;

	/*
	 * rebase -i writes "git-rebase-todo" without the currently executing
	 * command, appending it to "done" instead.
	 */
	if (FUNC10(opts))
		next++;

	fd = FUNC9(&todo_lock, todo_path, 0);
	if (fd < 0)
		return FUNC4(FUNC0("could not lock '%s'"), todo_path);
	offset = FUNC7(todo_list, next);
	if (FUNC13(fd, todo_list->buf.buf + offset,
			todo_list->buf.len - offset) < 0)
		return FUNC4(FUNC0("could not write to '%s'"), todo_path);
	if (FUNC2(&todo_lock) < 0)
		return FUNC3(FUNC0("failed to finalize '%s'"), todo_path);

	if (FUNC10(opts) && next > 0) {
		const char *done = FUNC12();
		int fd = FUNC11(done, O_CREAT | O_WRONLY | O_APPEND, 0666);
		int ret = 0;

		if (fd < 0)
			return 0;
		if (FUNC13(fd, FUNC5(todo_list, next - 1),
				  FUNC6(todo_list, next - 1))
		    < 0)
			ret = FUNC4(FUNC0("could not write to '%s'"), done);
		if (FUNC1(fd) < 0)
			ret = FUNC4(FUNC0("failed to finalize '%s'"), done);
		return ret;
	}
	return 0;
}