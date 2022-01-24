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
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ref_store*,char const*,struct object_id*) ; 

__attribute__((used)) static int FUNC4(struct ref_store *refs, const char **argv)
{
	const char *refname = FUNC0(*argv++, "refname");
	struct object_id oid;
	int ret;

	ret = FUNC3(refs, refname, &oid);
	if (!ret)
		FUNC2(FUNC1(&oid));
	return ret;
}