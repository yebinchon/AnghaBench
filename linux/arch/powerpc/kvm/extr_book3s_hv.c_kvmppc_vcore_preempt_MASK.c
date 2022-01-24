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
struct preempted_vcore_list {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct kvmppc_vcore {scalar_t__ num_threads; int /*<<< orphan*/  preempt_list; int /*<<< orphan*/  kvm; int /*<<< orphan*/  pcpu; int /*<<< orphan*/  vcore_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCORE_PREEMPT ; 
 int /*<<< orphan*/  FUNC0 (struct kvmppc_vcore*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  preempted_vcores ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct preempted_vcore_list* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct kvmppc_vcore *vc)
{
	struct preempted_vcore_list *lp = FUNC5(&preempted_vcores);

	vc->vcore_state = VCORE_PREEMPT;
	vc->pcpu = FUNC2();
	if (vc->num_threads < FUNC6(vc->kvm)) {
		FUNC3(&lp->lock);
		FUNC1(&vc->preempt_list, &lp->list);
		FUNC4(&lp->lock);
	}

	/* Start accumulating stolen time */
	FUNC0(vc);
}