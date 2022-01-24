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
struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UPDATE_REFS_DIE_ON_ERR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ref_store*,char const*,char const*,struct object_id*,struct object_id*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ref_store *refs, const char **argv)
{
	const char *msg = FUNC3(*argv++, "msg");
	const char *refname = FUNC3(*argv++, "refname");
	const char *new_sha1_buf = FUNC3(*argv++, "new-sha1");
	const char *old_sha1_buf = FUNC3(*argv++, "old-sha1");
	unsigned int flags = FUNC0(*argv++, "flags");
	struct object_id old_oid;
	struct object_id new_oid;

	if (FUNC2(old_sha1_buf, &old_oid) ||
	    FUNC2(new_sha1_buf, &new_oid))
		FUNC1("not sha-1");

	return FUNC4(refs, msg, refname,
			       &new_oid, &old_oid,
			       flags, UPDATE_REFS_DIE_ON_ERR);
}