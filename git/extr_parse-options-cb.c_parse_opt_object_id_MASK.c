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
struct option {struct object_id* value; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 struct object_id null_oid ; 

int FUNC3(const struct option *opt, const char *arg, int unset)
{
	struct object_id oid;
	struct object_id *target = opt->value;

	if (unset) {
		*target = null_oid;
		return 0;
	}
	if (!arg)
		return -1;
	if (FUNC2(arg, &oid))
		return FUNC1(FUNC0("malformed object name '%s'"), arg);
	*target = oid;
	return 0;
}