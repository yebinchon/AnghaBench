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
struct unpack_trees_options {int /*<<< orphan*/  result; int /*<<< orphan*/  src_index; scalar_t__ dir; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct cache_entry {int ce_flags; } ;
typedef  enum unpack_trees_error_types { ____Placeholder_unpack_trees_error_types } unpack_trees_error_types ;

/* Variables and functions */
 int CE_REMOVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct unpack_trees_options*,int,char const*) ; 
 scalar_t__ FUNC2 (struct unpack_trees_options*,char const*,int,struct stat*) ; 
 scalar_t__ ignore_case ; 
 struct cache_entry* FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,char const*,int*) ; 
 scalar_t__ FUNC5 (struct cache_entry const*,struct unpack_trees_options*) ; 

__attribute__((used)) static int FUNC6(const char *name, int len, int dtype,
			      const struct cache_entry *ce, struct stat *st,
			      enum unpack_trees_error_types error_type,
			      struct unpack_trees_options *o)
{
	const struct cache_entry *result;

	/*
	 * It may be that the 'lstat()' succeeded even though
	 * target 'ce' was absent, because there is an old
	 * entry that is different only in case..
	 *
	 * Ignore that lstat() if it matches.
	 */
	if (ignore_case && FUNC2(o, name, len, st))
		return 0;

	if (o->dir &&
	    FUNC4(o->dir, o->src_index, name, &dtype))
		/*
		 * ce->name is explicitly excluded, so it is Ok to
		 * overwrite it.
		 */
		return 0;
	if (FUNC0(st->st_mode)) {
		/*
		 * We are checking out path "foo" and
		 * found "foo/." in the working tree.
		 * This is tricky -- if we have modified
		 * files that are in "foo/" we would lose
		 * them.
		 */
		if (FUNC5(ce, o) < 0)
			return -1;
		return 0;
	}

	/*
	 * The previous round may already have decided to
	 * delete this path, which is in a subdirectory that
	 * is being replaced with a blob.
	 */
	result = FUNC3(&o->result, name, len, 0);
	if (result) {
		if (result->ce_flags & CE_REMOVE)
			return 0;
	}

	return FUNC1(o, error_type, name);
}