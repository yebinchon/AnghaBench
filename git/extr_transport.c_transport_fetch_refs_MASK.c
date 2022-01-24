#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct transport {TYPE_2__* vtable; } ;
struct ref {struct ref* next; int /*<<< orphan*/  old_oid; TYPE_1__* peer_ref; } ;
struct TYPE_4__ {int (* fetch ) (struct transport*,int,struct ref**) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  old_oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ref**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ref**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct transport*,int,struct ref**) ; 

int FUNC6(struct transport *transport, struct ref *refs)
{
	int rc;
	int nr_heads = 0, nr_alloc = 0, nr_refs = 0;
	struct ref **heads = NULL;
	struct ref *rm;

	for (rm = refs; rm; rm = rm->next) {
		nr_refs++;
		if (rm->peer_ref &&
		    !FUNC3(&rm->old_oid) &&
		    FUNC4(&rm->peer_ref->old_oid, &rm->old_oid))
			continue;
		FUNC1(heads, nr_heads + 1, nr_alloc);
		heads[nr_heads++] = rm;
	}

	if (!nr_heads) {
		/*
		 * When deepening of a shallow repository is requested,
		 * then local and remote refs are likely to still be equal.
		 * Just feed them all to the fetch method in that case.
		 * This condition shouldn't be met in a non-deepening fetch
		 * (see builtin/fetch.c:quickfetch()).
		 */
		FUNC0(heads, nr_refs);
		for (rm = refs; rm; rm = rm->next)
			heads[nr_heads++] = rm;
	}

	rc = transport->vtable->fetch(transport, nr_heads, heads);

	FUNC2(heads);
	return rc;
}