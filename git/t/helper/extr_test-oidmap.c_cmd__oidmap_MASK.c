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
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct test_entry {char* name; TYPE_1__ entry; } ;
struct strbuf {int /*<<< orphan*/ * buf; } ;
struct oidmap_iter {int dummy; } ;
struct oidmap {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELIM ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (struct test_entry*,int /*<<< orphan*/ ,char*) ; 
 struct oidmap OIDMAP_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct test_entry*) ; 
 scalar_t__ FUNC2 (char*,struct object_id*) ; 
 int /*<<< orphan*/  name ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (struct oidmap*,int) ; 
 struct test_entry* FUNC6 (struct oidmap*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (struct oidmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct oidmap*,struct oidmap_iter*) ; 
 struct test_entry* FUNC9 (struct oidmap_iter*) ; 
 struct test_entry* FUNC10 (struct oidmap*,struct test_entry*) ; 
 struct test_entry* FUNC11 (struct oidmap*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC15 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 char* FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC19(int argc, const char **argv)
{
	struct strbuf line = STRBUF_INIT;
	struct oidmap map = OIDMAP_INIT;

	FUNC14();

	/* init oidmap */
	FUNC7(&map, 0);

	/* process commands from stdin */
	while (FUNC15(&line, stdin) != EOF) {
		char *cmd, *p1 = NULL, *p2 = NULL;
		struct test_entry *entry;
		struct object_id oid;

		/* break line into command and up to two parameters */
		cmd = FUNC18(line.buf, DELIM);
		/* ignore empty lines */
		if (!cmd || *cmd == '#')
			continue;

		p1 = FUNC18(NULL, DELIM);
		if (p1)
			p2 = FUNC18(NULL, DELIM);

		if (!FUNC17("put", cmd) && p1 && p2) {

			if (FUNC2(p1, &oid)) {
				FUNC12("Unknown oid: %s\n", p1);
				continue;
			}

			/* create entry with oid_key = p1, name_value = p2 */
			FUNC0(entry, name, p2);
			FUNC4(&entry->entry.oid, &oid);

			/* add / replace entry */
			entry = FUNC10(&map, entry);

			/* print and free replaced entry, if any */
			FUNC13(entry ? entry->name : "NULL");
			FUNC1(entry);

		} else if (!FUNC17("get", cmd) && p1) {

			if (FUNC2(p1, &oid)) {
				FUNC12("Unknown oid: %s\n", p1);
				continue;
			}

			/* lookup entry in oidmap */
			entry = FUNC6(&map, &oid);

			/* print result */
			FUNC13(entry ? entry->name : "NULL");

		} else if (!FUNC17("remove", cmd) && p1) {

			if (FUNC2(p1, &oid)) {
				FUNC12("Unknown oid: %s\n", p1);
				continue;
			}

			/* remove entry from oidmap */
			entry = FUNC11(&map, &oid);

			/* print result and free entry*/
			FUNC13(entry ? entry->name : "NULL");
			FUNC1(entry);

		} else if (!FUNC17("iterate", cmd)) {

			struct oidmap_iter iter;
			FUNC8(&map, &iter);
			while ((entry = FUNC9(&iter)))
				FUNC12("%s %s\n", FUNC3(&entry->entry.oid), entry->name);

		} else {

			FUNC12("Unknown command %s\n", cmd);

		}
	}

	FUNC16(&line);
	FUNC5(&map, 1);
	return 0;
}