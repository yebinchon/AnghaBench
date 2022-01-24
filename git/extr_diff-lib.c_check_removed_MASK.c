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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct object_id {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry const*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,struct object_id*) ; 

__attribute__((used)) static int FUNC7(const struct cache_entry *ce, struct stat *st)
{
	if (FUNC5(ce->name, st) < 0) {
		if (!FUNC4(errno))
			return -1;
		return 1;
	}
	if (FUNC3(ce->name, FUNC2(ce)))
		return 1;
	if (FUNC0(st->st_mode)) {
		struct object_id sub;

		/*
		 * If ce is already a gitlink, we can have a plain
		 * directory (i.e. the submodule is not checked out),
		 * or a checked out submodule.  Either case this is not
		 * a case where something was removed from the work tree,
		 * so we will return 0.
		 *
		 * Otherwise, if the directory is not a submodule
		 * repository, that means ce which was a blob turned into
		 * a directory --- the blob was removed!
		 */
		if (!FUNC1(ce->ce_mode) &&
		    FUNC6(ce->name, "HEAD", &sub))
			return 1;
	}
	return 0;
}