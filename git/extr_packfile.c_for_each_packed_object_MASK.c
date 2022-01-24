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
struct packed_git {int /*<<< orphan*/  pack_promisor; int /*<<< orphan*/  pack_local; struct packed_git* next; } ;
typedef  enum for_each_object_flags { ____Placeholder_for_each_object_flags } for_each_object_flags ;
typedef  int /*<<< orphan*/  each_packed_object_fn ;

/* Variables and functions */
 int FOR_EACH_OBJECT_LOCAL_ONLY ; 
 int FOR_EACH_OBJECT_PROMISOR_ONLY ; 
 int FUNC0 (struct packed_git*,int /*<<< orphan*/ ,void*,int) ; 
 struct packed_git* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC4(each_packed_object_fn cb, void *data,
			   enum for_each_object_flags flags)
{
	struct packed_git *p;
	int r = 0;
	int pack_errors = 0;

	FUNC3(the_repository);
	for (p = FUNC1(the_repository); p; p = p->next) {
		if ((flags & FOR_EACH_OBJECT_LOCAL_ONLY) && !p->pack_local)
			continue;
		if ((flags & FOR_EACH_OBJECT_PROMISOR_ONLY) &&
		    !p->pack_promisor)
			continue;
		if (FUNC2(p)) {
			pack_errors = 1;
			continue;
		}
		r = FUNC0(p, cb, data, flags);
		if (r)
			break;
	}
	return r ? r : pack_errors;
}