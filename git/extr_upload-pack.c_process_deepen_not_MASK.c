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
struct string_list {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct object_id*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC6(const char *line, struct string_list *deepen_not, int *deepen_rev_list)
{
	const char *arg;
	if (FUNC3(line, "deepen-not ", &arg)) {
		char *ref = NULL;
		struct object_id oid;
		if (FUNC1(the_repository, arg, FUNC5(arg), &oid, &ref) != 1)
			FUNC0("git upload-pack: ambiguous deepen-not: %s", line);
		FUNC4(deepen_not, ref);
		FUNC2(ref);
		*deepen_rev_list = 1;
		return 1;
	}
	return 0;
}