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
struct stat {int dummy; } ;
struct repository {int dummy; } ;
struct packed_git {char const* pack_name; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ errno ; 
 struct packed_git* FUNC3 (struct repository*,int /*<<< orphan*/ ) ; 
 struct object_id const* FUNC4 (struct repository*,struct object_id const*) ; 
 char const* FUNC5 (struct object_id const*) ; 
 void* FUNC6 (struct repository*,struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (struct repository*,struct object_id const*,struct stat*,char const**) ; 

void *FUNC8(struct repository *r,
				const struct object_id *oid,
				enum object_type *type,
				unsigned long *size,
				int lookup_replace)
{
	void *data;
	const struct packed_git *p;
	const char *path;
	struct stat st;
	const struct object_id *repl = lookup_replace ?
		FUNC4(r, oid) : oid;

	errno = 0;
	data = FUNC6(r, repl, type, size);
	if (data)
		return data;

	if (errno && errno != ENOENT)
		FUNC2(FUNC0("failed to read object %s"), FUNC5(oid));

	/* die if we replaced an object with one that does not exist */
	if (repl != oid)
		FUNC1(FUNC0("replacement %s not found for %s"),
		    FUNC5(repl), FUNC5(oid));

	if (!FUNC7(r, repl, &st, &path))
		FUNC1(FUNC0("loose object %s (stored in %s) is corrupt"),
		    FUNC5(repl), path);

	if ((p = FUNC3(r, repl->hash)) != NULL)
		FUNC1(FUNC0("packed object %s (stored in %s) is corrupt"),
		    FUNC5(repl), p->pack_name);

	return NULL;
}