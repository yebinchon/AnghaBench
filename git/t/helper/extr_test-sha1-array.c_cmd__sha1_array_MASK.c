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
struct strbuf {char const* buf; } ;
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct oid_array OID_ARRAY_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct oid_array*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct oid_array*) ; 
 int /*<<< orphan*/  FUNC4 (struct oid_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct oid_array*,struct object_id*) ; 
 int /*<<< orphan*/  print_oid ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC8 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

int FUNC10(int argc, const char **argv)
{
	struct oid_array array = OID_ARRAY_INIT;
	struct strbuf line = STRBUF_INIT;

	while (FUNC8(&line, stdin) != EOF) {
		const char *arg;
		struct object_id oid;

		if (FUNC7(line.buf, "append ", &arg)) {
			if (FUNC1(arg, &oid))
				FUNC0("not a hexadecimal SHA1: %s", arg);
			FUNC2(&array, &oid);
		} else if (FUNC7(line.buf, "lookup ", &arg)) {
			if (FUNC1(arg, &oid))
				FUNC0("not a hexadecimal SHA1: %s", arg);
			FUNC6("%d\n", FUNC5(&array, &oid));
		} else if (!FUNC9(line.buf, "clear"))
			FUNC3(&array);
		else if (!FUNC9(line.buf, "for_each_unique"))
			FUNC4(&array, print_oid, NULL);
		else
			FUNC0("unknown command: %s", line.buf);
	}
	return 0;
}