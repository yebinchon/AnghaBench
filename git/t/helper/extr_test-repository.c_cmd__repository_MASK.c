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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char const*,struct object_id*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,struct object_id*) ; 

int FUNC5(int argc, const char **argv)
{
	if (argc < 2)
		FUNC0("must have at least 2 arguments");
	if (!FUNC2(argv[1], "parse_commit_in_graph")) {
		struct object_id oid;
		if (argc < 5)
			FUNC0("not enough arguments");
		if (FUNC1(argv[4], &oid, &argv[4]))
			FUNC0("cannot parse oid '%s'", argv[4]);
		FUNC4(argv[2], argv[3], &oid);
	} else if (!FUNC2(argv[1], "get_commit_tree_in_graph")) {
		struct object_id oid;
		if (argc < 5)
			FUNC0("not enough arguments");
		if (FUNC1(argv[4], &oid, &argv[4]))
			FUNC0("cannot parse oid '%s'", argv[4]);
		FUNC3(argv[2], argv[3], &oid);
	} else {
		FUNC0("unrecognized '%s'", argv[1]);
	}
	return 0;
}