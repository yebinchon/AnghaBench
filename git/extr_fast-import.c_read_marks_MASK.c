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
typedef  int /*<<< orphan*/  uintmax_t ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int offset; } ;
struct object_entry {int type; TYPE_1__ idx; int /*<<< orphan*/  pack_id; } ;
typedef  int /*<<< orphan*/  line ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  MAX_PACK_ID ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 struct object_entry* FUNC4 (struct object_id*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (char*,struct object_id*) ; 
 int /*<<< orphan*/  import_marks_file ; 
 int import_marks_file_done ; 
 scalar_t__ import_marks_file_ignore_missing ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct object_entry*) ; 
 struct object_entry* FUNC8 (struct object_id*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 char* FUNC10 (struct object_id*) ; 
 char* FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*,char**,int) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC13(void)
{
	char line[512];
	FILE *f = FUNC5(import_marks_file, "r");
	if (f)
		;
	else if (import_marks_file_ignore_missing && errno == ENOENT)
		goto done; /* Marks file does not exist */
	else
		FUNC1("cannot read '%s'", import_marks_file);
	while (FUNC3(line, sizeof(line), f)) {
		uintmax_t mark;
		char *end;
		struct object_id oid;
		struct object_entry *e;

		end = FUNC11(line, '\n');
		if (line[0] != ':' || !end)
			FUNC0("corrupt mark line: %s", line);
		*end = 0;
		mark = FUNC12(line + 1, &end, 10);
		if (!mark || end == line + 1
			|| *end != ' ' || FUNC6(end + 1, &oid))
			FUNC0("corrupt mark line: %s", line);
		e = FUNC4(&oid);
		if (!e) {
			enum object_type type = FUNC9(the_repository,
								&oid, NULL);
			if (type < 0)
				FUNC0("object not found: %s", FUNC10(&oid));
			e = FUNC8(&oid);
			e->type = type;
			e->pack_id = MAX_PACK_ID;
			e->idx.offset = 1; /* just not zero! */
		}
		FUNC7(mark, e);
	}
	FUNC2(f);
done:
	import_marks_file_done = 1;
}