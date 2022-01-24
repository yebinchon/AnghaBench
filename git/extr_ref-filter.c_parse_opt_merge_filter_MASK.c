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
struct ref_filter {int /*<<< orphan*/  merge_commit; scalar_t__ merge; } ;
struct option {int /*<<< orphan*/  long_name; struct ref_filter* value; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ REF_FILTER_MERGED_INCLUDE ; 
 scalar_t__ REF_FILTER_MERGED_OMIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC7(const struct option *opt, const char *arg, int unset)
{
	struct ref_filter *rf = opt->value;
	struct object_id oid;
	int no_merged = FUNC6(opt->long_name, "no");

	FUNC0(unset);

	if (rf->merge) {
		if (no_merged) {
			return FUNC3(FUNC1("option `%s' is incompatible with --merged"),
				     opt->long_name);
		} else {
			return FUNC3(FUNC1("option `%s' is incompatible with --no-merged"),
				     opt->long_name);
		}
	}

	rf->merge = no_merged
		? REF_FILTER_MERGED_OMIT
		: REF_FILTER_MERGED_INCLUDE;

	if (FUNC4(arg, &oid))
		FUNC2(FUNC1("malformed object name %s"), arg);

	rf->merge_commit = FUNC5(the_repository,
							  &oid, 0);
	if (!rf->merge_commit)
		return FUNC3(FUNC1("option `%s' must point to a commit"), opt->long_name);

	return 0;
}