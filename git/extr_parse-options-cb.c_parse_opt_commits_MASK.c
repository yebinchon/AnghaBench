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
struct option {int /*<<< orphan*/  value; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,struct object_id*) ; 
 struct commit* FUNC4 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC5(const struct option *opt, const char *arg, int unset)
{
	struct object_id oid;
	struct commit *commit;

	FUNC0(unset);

	if (!arg)
		return -1;
	if (FUNC3(arg, &oid))
		return FUNC2("malformed object name %s", arg);
	commit = FUNC4(the_repository, &oid);
	if (!commit)
		return FUNC2("no such commit %s", arg);
	FUNC1(commit, opt->value);
	return 0;
}