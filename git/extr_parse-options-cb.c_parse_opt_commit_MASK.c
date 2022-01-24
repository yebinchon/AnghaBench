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
struct option {struct commit** value; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,struct object_id*) ; 
 struct commit* FUNC2 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC3(const struct option *opt, const char *arg, int unset)
{
	struct object_id oid;
	struct commit *commit;
	struct commit **target = opt->value;

	if (!arg)
		return -1;
	if (FUNC1(arg, &oid))
		return FUNC0("malformed object name %s", arg);
	commit = FUNC2(the_repository, &oid);
	if (!commit)
		return FUNC0("no such commit %s", arg);
	*target = commit;
	return 0;
}