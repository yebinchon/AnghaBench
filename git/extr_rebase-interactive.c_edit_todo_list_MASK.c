#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct todo_list {TYPE_1__ buf; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 unsigned int TODO_LIST_APPEND_TODO_HELP ; 
 unsigned int TODO_LIST_SHORTEN_IDS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC5 () ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (struct repository*,int /*<<< orphan*/ ,struct todo_list*) ; 
 scalar_t__ FUNC9 (struct repository*,struct todo_list*,char const*,char const*,char const*,int,unsigned int) ; 

int FUNC10(struct repository *r, struct todo_list *todo_list,
		   struct todo_list *new_todo, const char *shortrevisions,
		   const char *shortonto, unsigned flags)
{
	const char *todo_file = FUNC5();
	unsigned initial = shortrevisions && shortonto;

	/* If the user is editing the todo list, we first try to parse
	 * it.  If there is an error, we do not return, because the user
	 * might want to fix it in the first place. */
	if (!initial)
		FUNC8(r, todo_list->buf.buf, todo_list);

	if (FUNC9(r, todo_list, todo_file, shortrevisions, shortonto,
				    -1, flags | TODO_LIST_SHORTEN_IDS | TODO_LIST_APPEND_TODO_HELP))
		return FUNC3(FUNC0("could not write '%s'"), todo_file);

	if (initial && FUNC1(FUNC6(), todo_file, 0666))
		return FUNC2(FUNC0("could not copy '%s' to '%s'."), todo_file,
			     FUNC6());

	if (FUNC4(todo_file, &new_todo->buf, NULL))
		return -2;

	FUNC7(&new_todo->buf, 1);
	if (initial && new_todo->buf.len == 0)
		return -3;

	/* For the initial edit, the todo list gets parsed in
	 * complete_action(). */
	if (!initial)
		return FUNC8(r, new_todo->buf.buf, new_todo);

	return 0;
}