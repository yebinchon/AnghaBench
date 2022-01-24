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
 struct ref_store* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct ref_store*,char const*,int /*<<< orphan*/ ,struct object_id*,int*) ; 

int FUNC3(const char *submodule, const char *refname,
			struct object_id *oid)
{
	struct ref_store *refs;
	int flags;

	refs = FUNC0(submodule);

	if (!refs)
		return -1;

	if (!FUNC2(refs, refname, 0, oid, &flags) ||
	    FUNC1(oid))
		return -1;
	return 0;
}