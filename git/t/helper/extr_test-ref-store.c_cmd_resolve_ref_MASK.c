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
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,int) ; 
 char* FUNC4 (struct ref_store*,char const*,int,struct object_id*,int*) ; 

__attribute__((used)) static int FUNC5(struct ref_store *refs, const char **argv)
{
	struct object_id oid;
	const char *refname = FUNC1(*argv++, "refname");
	int resolve_flags = FUNC0(*argv++, "resolve-flags");
	int flags;
	const char *ref;

	ref = FUNC4(refs, refname, resolve_flags,
				      &oid, &flags);
	FUNC3("%s %s 0x%x\n", FUNC2(&oid), ref ? ref : "(null)", flags);
	return ref ? 0 : 1;
}