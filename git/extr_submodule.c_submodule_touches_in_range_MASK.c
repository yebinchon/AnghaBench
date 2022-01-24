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
struct string_list {int nr; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct argv_array {int dummy; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC0 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,struct string_list*,struct argv_array*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*) ; 
 char* FUNC5 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct repository*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(struct repository *r,
			       struct object_id *excl_oid,
			       struct object_id *incl_oid)
{
	struct string_list subs = STRING_LIST_INIT_DUP;
	struct argv_array args = ARGV_ARRAY_INIT;
	int ret;

	/* No need to check if there are no submodules configured */
	if (!FUNC6(r, NULL, NULL))
		return 0;

	FUNC1(&args, "--"); /* args[0] program name */
	FUNC1(&args, FUNC5(incl_oid));
	if (!FUNC4(excl_oid)) {
		FUNC1(&args, "--not");
		FUNC1(&args, FUNC5(excl_oid));
	}

	FUNC2(r, &subs, &args);
	ret = subs.nr;

	FUNC0(&args);

	FUNC3(&subs);
	return ret;
}