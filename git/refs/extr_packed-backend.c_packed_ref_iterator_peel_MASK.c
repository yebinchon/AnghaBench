#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ref_iterator {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct packed_ref_iterator {int /*<<< orphan*/  oid; TYPE_1__ base; int /*<<< orphan*/  peeled; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int REF_ISBROKEN ; 
 int REF_ISSYMREF ; 
 int REF_KNOWS_PEELED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct object_id*) ; 

__attribute__((used)) static int FUNC3(struct ref_iterator *ref_iterator,
				   struct object_id *peeled)
{
	struct packed_ref_iterator *iter =
		(struct packed_ref_iterator *)ref_iterator;

	if ((iter->base.flags & REF_KNOWS_PEELED)) {
		FUNC1(peeled, &iter->peeled);
		return FUNC0(&iter->peeled) ? -1 : 0;
	} else if ((iter->base.flags & (REF_ISBROKEN | REF_ISSYMREF))) {
		return -1;
	} else {
		return !!FUNC2(&iter->oid, peeled);
	}
}