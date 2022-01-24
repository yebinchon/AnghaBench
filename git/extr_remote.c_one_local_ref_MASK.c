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
struct ref {struct ref* next; int /*<<< orphan*/  new_oid; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct ref* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct object_id const*) ; 

__attribute__((used)) static int FUNC3(const char *refname, const struct object_id *oid,
			 int flag, void *cb_data)
{
	struct ref ***local_tail = cb_data;
	struct ref *ref;

	/* we already know it starts with refs/ to get here */
	if (FUNC1(refname + 5, 0))
		return 0;

	ref = FUNC0(refname);
	FUNC2(&ref->new_oid, oid);
	**local_tail = ref;
	*local_tail = &ref->next;
	return 0;
}