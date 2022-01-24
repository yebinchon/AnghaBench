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
struct intel_excl_cntrs {int core_id; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct intel_excl_cntrs* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct intel_excl_cntrs *FUNC3(int cpu)
{
	struct intel_excl_cntrs *c;

	c = FUNC1(sizeof(struct intel_excl_cntrs),
			 GFP_KERNEL, FUNC0(cpu));
	if (c) {
		FUNC2(&c->lock);
		c->core_id = -1;
	}
	return c;
}