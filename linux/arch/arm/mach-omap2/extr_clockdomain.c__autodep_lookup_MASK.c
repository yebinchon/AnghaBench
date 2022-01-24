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
struct clockdomain {int dummy; } ;
struct TYPE_2__ {struct clockdomain* ptr; int /*<<< orphan*/  name; } ;
struct clkdm_autodep {TYPE_1__ clkdm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct clockdomain* FUNC0 (int /*<<< orphan*/ ) ; 
 struct clockdomain* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct clkdm_autodep *autodep)
{
	struct clockdomain *clkdm;

	if (!autodep)
		return;

	clkdm = FUNC1(autodep->clkdm.name);
	if (!clkdm) {
		FUNC2("clockdomain: autodeps: clockdomain %s does not exist\n",
			 autodep->clkdm.name);
		clkdm = FUNC0(-ENOENT);
	}
	autodep->clkdm.ptr = clkdm;
}