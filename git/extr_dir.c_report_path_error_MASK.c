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
struct pathspec {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {int /*<<< orphan*/  original; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(const char *ps_matched,
		      const struct pathspec *pathspec)
{
	/*
	 * Make sure all pathspec matched; otherwise it is an error.
	 */
	int num, errors = 0;
	for (num = 0; num < pathspec->nr; num++) {
		int other, found_dup;

		if (ps_matched[num])
			continue;
		/*
		 * The caller might have fed identical pathspec
		 * twice.  Do not barf on such a mistake.
		 * FIXME: parse_pathspec should have eliminated
		 * duplicate pathspec.
		 */
		for (found_dup = other = 0;
		     !found_dup && other < pathspec->nr;
		     other++) {
			if (other == num || !ps_matched[other])
				continue;
			if (!FUNC2(pathspec->items[other].original,
				    pathspec->items[num].original))
				/*
				 * Ok, we have a match already.
				 */
				found_dup = 1;
		}
		if (found_dup)
			continue;

		FUNC1(FUNC0("pathspec '%s' did not match any file(s) known to git"),
		      pathspec->items[num].original);
		errors++;
	}
	return errors;
}