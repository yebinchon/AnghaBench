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
struct stat {int /*<<< orphan*/  st_mtime; } ;
struct object_id {int dummy; } ;
struct object {int flags; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int SEEN ; 
 int /*<<< orphan*/  FUNC0 (struct object_id const*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ errno ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct object* FUNC2 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*) ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC5(const struct object_id *oid,
			    const char *path, void *data)
{
	struct stat st;
	struct object *obj = FUNC2(the_repository, oid);

	if (obj && obj->flags & SEEN)
		return 0;

	if (FUNC4(path, &st) < 0) {
		/*
		 * It's OK if an object went away during our iteration; this
		 * could be due to a simultaneous repack. But anything else
		 * we should abort, since we might then fail to mark objects
		 * which should not be pruned.
		 */
		if (errno == ENOENT)
			return 0;
		return FUNC1("unable to stat %s", FUNC3(oid));
	}

	FUNC0(oid, st.st_mtime, data);
	return 0;
}