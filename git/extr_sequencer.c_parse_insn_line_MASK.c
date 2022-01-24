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
struct todo_item {int command; int arg_offset; int arg_len; int /*<<< orphan*/ * commit; int /*<<< orphan*/  flags; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int TODO_BREAK ; 
 int TODO_COMMENT ; 
 int /*<<< orphan*/  TODO_EDIT_MERGE_MSG ; 
 int TODO_EXEC ; 
 int TODO_LABEL ; 
 int TODO_MERGE ; 
 int TODO_NOOP ; 
 int TODO_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 char const comment_line_char ; 
 int FUNC2 (int /*<<< orphan*/ ,int,...) ; 
 int FUNC3 (char const*,struct object_id*) ; 
 scalar_t__ FUNC4 (int,char const**) ; 
 int /*<<< orphan*/ * FUNC5 (struct repository*,struct object_id*) ; 
 scalar_t__ FUNC6 (char const*,char*,char const**) ; 
 int FUNC7 (char const*,char*) ; 
 int FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(struct repository *r, struct todo_item *item,
			   const char *buf, const char *bol, char *eol)
{
	struct object_id commit_oid;
	char *end_of_object_name;
	int i, saved, status, padding;

	item->flags = 0;

	/* left-trim */
	bol += FUNC8(bol, " \t");

	if (bol == eol || *bol == '\r' || *bol == comment_line_char) {
		item->command = TODO_COMMENT;
		item->commit = NULL;
		item->arg_offset = bol - buf;
		item->arg_len = eol - bol;
		return 0;
	}

	for (i = 0; i < TODO_COMMENT; i++)
		if (FUNC4(i, &bol)) {
			item->command = i;
			break;
		}
	if (i >= TODO_COMMENT)
		return -1;

	/* Eat up extra spaces/ tabs before object name */
	padding = FUNC8(bol, " \t");
	bol += padding;

	if (item->command == TODO_NOOP || item->command == TODO_BREAK) {
		if (bol != eol)
			return FUNC2(FUNC0("%s does not accept arguments: '%s'"),
				     FUNC1(item->command), bol);
		item->commit = NULL;
		item->arg_offset = bol - buf;
		item->arg_len = eol - bol;
		return 0;
	}

	if (!padding)
		return FUNC2(FUNC0("missing arguments for %s"),
			     FUNC1(item->command));

	if (item->command == TODO_EXEC || item->command == TODO_LABEL ||
	    item->command == TODO_RESET) {
		item->commit = NULL;
		item->arg_offset = bol - buf;
		item->arg_len = (int)(eol - bol);
		return 0;
	}

	if (item->command == TODO_MERGE) {
		if (FUNC6(bol, "-C", &bol))
			bol += FUNC8(bol, " \t");
		else if (FUNC6(bol, "-c", &bol)) {
			bol += FUNC8(bol, " \t");
			item->flags |= TODO_EDIT_MERGE_MSG;
		} else {
			item->flags |= TODO_EDIT_MERGE_MSG;
			item->commit = NULL;
			item->arg_offset = bol - buf;
			item->arg_len = (int)(eol - bol);
			return 0;
		}
	}

	end_of_object_name = (char *) bol + FUNC7(bol, " \t\n");
	saved = *end_of_object_name;
	*end_of_object_name = '\0';
	status = FUNC3(bol, &commit_oid);
	*end_of_object_name = saved;

	bol = end_of_object_name + FUNC8(end_of_object_name, " \t");
	item->arg_offset = bol - buf;
	item->arg_len = (int)(eol - bol);

	if (status < 0)
		return FUNC2(FUNC0("could not parse '%.*s'"),
			     (int)(end_of_object_name - bol), bol);

	item->commit = FUNC5(r, &commit_oid);
	return !item->commit;
}