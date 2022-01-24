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
struct ref {int exact_oid; struct ref* next; int /*<<< orphan*/  old_oid; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct ref* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,struct ref*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct object_id const*) ; 

__attribute__((used)) static int FUNC4(const char *remote_name,
			 const struct object_id *oids,
			 int oid_nr)
{
	struct ref *ref = NULL;
	int i;

	for (i = 0; i < oid_nr; i++) {
		struct ref *new_ref = FUNC0(FUNC2(&oids[i]));
		FUNC3(&new_ref->old_oid, &oids[i]);
		new_ref->exact_oid = 1;
		new_ref->next = ref;
		ref = new_ref;
	}
	return FUNC1(remote_name, ref);
}