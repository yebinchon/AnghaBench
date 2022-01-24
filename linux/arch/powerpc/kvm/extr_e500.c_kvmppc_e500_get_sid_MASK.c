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
struct vcpu_id_table {int /*<<< orphan*/ *** id; } ;
struct kvmppc_vcpu_e500 {struct vcpu_id_table* idt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int NUM_TIDS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kvmppc_vcpu_e500*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

unsigned int FUNC6(struct kvmppc_vcpu_e500 *vcpu_e500,
				 unsigned int as, unsigned int gid,
				 unsigned int pr, int avoid_recursion)
{
	struct vcpu_id_table *idt = vcpu_e500->idt;
	int sid;

	FUNC0(as >= 2);
	FUNC0(gid >= NUM_TIDS);
	FUNC0(pr >= 2);

	sid = FUNC4(&idt->id[as][gid][pr]);

	while (sid <= 0) {
		/* No mapping yet */
		sid = FUNC5(&idt->id[as][gid][pr]);
		if (sid <= 0) {
			FUNC1();
			FUNC3();
		}

		/* Update shadow pid when mappings are changed */
		if (!avoid_recursion)
			FUNC2(vcpu_e500);
	}

	return sid;
}