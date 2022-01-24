#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct clockdomain {int flags; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_2__* ptr; } ;
struct clkdm_autodep {TYPE_1__ clkdm; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CLKDM_NO_AUTODEPS ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct clockdomain*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct clockdomain*,TYPE_2__*) ; 
 struct clkdm_autodep* autodeps ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct clockdomain *clkdm)
{
	struct clkdm_autodep *autodep;

	if (!autodeps || clkdm->flags & CLKDM_NO_AUTODEPS)
		return;

	for (autodep = autodeps; autodep->clkdm.ptr; autodep++) {
		if (FUNC0(autodep->clkdm.ptr))
			continue;

		FUNC3("clockdomain: %s: adding %s sleepdep/wkdep\n",
			 clkdm->name, autodep->clkdm.ptr->name);

		FUNC1(clkdm, autodep->clkdm.ptr);
		FUNC2(clkdm, autodep->clkdm.ptr);
	}
}