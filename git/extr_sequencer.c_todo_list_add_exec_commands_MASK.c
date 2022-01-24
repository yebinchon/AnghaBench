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
struct strbuf {size_t len; } ;
struct todo_list {int nr; int alloc; struct todo_item* items; struct strbuf buf; } ;
struct todo_item {int command; size_t offset_in_buf; size_t arg_offset; size_t arg_len; } ;
struct string_list {int nr; TYPE_1__* items; } ;
typedef  enum todo_command { ____Placeholder_todo_command } todo_command ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct todo_item*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct todo_item*,struct todo_item*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct todo_item*) ; 
 int TODO_EXEC ; 
 int TODO_MERGE ; 
 int TODO_PICK ; 
 int /*<<< orphan*/  FUNC3 (struct todo_item*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*) ; 
 size_t FUNC7 (char*) ; 
 struct todo_item* FUNC8 (int,int) ; 

void FUNC9(struct todo_list *todo_list,
				 struct string_list *commands)
{
	struct strbuf *buf = &todo_list->buf;
	size_t base_offset = buf->len;
	int i, insert, nr = 0, alloc = 0;
	struct todo_item *items = NULL, *base_items = NULL;

	base_items = FUNC8(commands->nr, sizeof(struct todo_item));
	for (i = 0; i < commands->nr; i++) {
		size_t command_len = FUNC7(commands->items[i].string);

		FUNC6(buf, commands->items[i].string);
		FUNC5(buf, '\n');

		base_items[i].command = TODO_EXEC;
		base_items[i].offset_in_buf = base_offset;
		base_items[i].arg_offset = base_offset + FUNC7("exec ");
		base_items[i].arg_len = command_len - FUNC7("exec ");

		base_offset += command_len + 1;
	}

	/*
	 * Insert <commands> after every pick. Here, fixup/squash chains
	 * are considered part of the pick, so we insert the commands *after*
	 * those chains if there are any.
	 *
	 * As we insert the exec commands immediatly after rearranging
	 * any fixups and before the user edits the list, a fixup chain
	 * can never contain comments (any comments are empty picks that
	 * have been commented out because the user did not specify
	 * --keep-empty).  So, it is safe to insert an exec command
	 * without looking at the command following a comment.
	 */
	insert = 0;
	for (i = 0; i < todo_list->nr; i++) {
		enum todo_command command = todo_list->items[i].command;
		if (insert && !FUNC4(command)) {
			FUNC0(items, nr + commands->nr, alloc);
			FUNC1(items + nr, base_items, commands->nr);
			nr += commands->nr;

			insert = 0;
		}

		FUNC0(items, nr + 1, alloc);
		items[nr++] = todo_list->items[i];

		if (command == TODO_PICK || command == TODO_MERGE)
			insert = 1;
	}

	/* insert or append final <commands> */
	if (insert || nr == todo_list->nr) {
		FUNC0(items, nr + commands->nr, alloc);
		FUNC1(items + nr, base_items, commands->nr);
		nr += commands->nr;
	}

	FUNC3(base_items);
	FUNC2(todo_list->items);
	todo_list->items = items;
	todo_list->nr = nr;
	todo_list->alloc = alloc;
}