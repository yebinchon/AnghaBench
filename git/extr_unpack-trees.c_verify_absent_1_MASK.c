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
struct unpack_trees_options {int /*<<< orphan*/  update; scalar_t__ reset; scalar_t__ index_only; } ;
struct stat {int dummy; } ;
struct cache_entry {char* name; int /*<<< orphan*/  oid; } ;
typedef  enum unpack_trees_error_types { ____Placeholder_unpack_trees_error_types } unpack_trees_error_types ;

/* Variables and functions */
 int /*<<< orphan*/  DT_UNKNOWN ; 
 scalar_t__ ENOENT ; 
 int FUNC0 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry const*) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ,struct cache_entry const*,struct stat*,int,struct unpack_trees_options*) ; 
 int FUNC4 (struct cache_entry const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct unpack_trees_options*) ; 
 scalar_t__ errno ; 
 int FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct cache_entry const*) ; 
 char* FUNC10 (char*,int) ; 

__attribute__((used)) static int FUNC11(const struct cache_entry *ce,
			   enum unpack_trees_error_types error_type,
			   struct unpack_trees_options *o)
{
	int len;
	struct stat st;

	if (o->index_only || o->reset || !o->update)
		return 0;

	len = FUNC2(ce->name, FUNC0(ce));
	if (!len)
		return 0;
	else if (len > 0) {
		char *path;
		int ret;

		path = FUNC10(ce->name, len);
		if (FUNC7(path, &st))
			ret = FUNC5("cannot stat '%s'", path);
		else {
			if (FUNC9(ce))
				ret = FUNC4(ce,
								FUNC8(&ce->oid),
								NULL, o);
			else
				ret = FUNC3(path, len, DT_UNKNOWN, NULL,
							 &st, error_type, o);
		}
		FUNC6(path);
		return ret;
	} else if (FUNC7(ce->name, &st)) {
		if (errno != ENOENT)
			return FUNC5("cannot stat '%s'", ce->name);
		return 0;
	} else {
		if (FUNC9(ce))
			return FUNC4(ce, FUNC8(&ce->oid),
							 NULL, o);

		return FUNC3(ce->name, FUNC0(ce),
					  FUNC1(ce), ce, &st,
					  error_type, o);
	}
}