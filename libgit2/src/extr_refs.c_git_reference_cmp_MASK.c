#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ git_reference_t ;
struct TYPE_6__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  symbolic; } ;
struct TYPE_7__ {TYPE_1__ target; } ;
typedef  TYPE_2__ git_reference ;

/* Variables and functions */
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(
	const git_reference *ref1,
	const git_reference *ref2)
{
	git_reference_t type1, type2;
	FUNC0(ref1 && ref2);

	type1 = FUNC2(ref1);
	type2 = FUNC2(ref2);

	/* let's put symbolic refs before OIDs */
	if (type1 != type2)
		return (type1 == GIT_REFERENCE_SYMBOLIC) ? -1 : 1;

	if (type1 == GIT_REFERENCE_SYMBOLIC)
		return FUNC3(ref1->target.symbolic, ref2->target.symbolic);

	return FUNC1(&ref1->target.oid, &ref2->target.oid);
}