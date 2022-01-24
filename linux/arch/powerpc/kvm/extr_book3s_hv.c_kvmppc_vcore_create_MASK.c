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
struct kvmppc_vcore {int first_vcpuid; int /*<<< orphan*/  preempt_list; struct kvm* kvm; int /*<<< orphan*/  lpcr; int /*<<< orphan*/  preempt_tb; int /*<<< orphan*/  wq; int /*<<< orphan*/  stoltb_lock; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  lpcr; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TB_NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct kvmppc_vcore* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct kvmppc_vcore *FUNC4(struct kvm *kvm, int id)
{
	struct kvmppc_vcore *vcore;

	vcore = FUNC2(sizeof(struct kvmppc_vcore), GFP_KERNEL);

	if (vcore == NULL)
		return NULL;

	FUNC3(&vcore->lock);
	FUNC3(&vcore->stoltb_lock);
	FUNC1(&vcore->wq);
	vcore->preempt_tb = TB_NIL;
	vcore->lpcr = kvm->arch.lpcr;
	vcore->first_vcpuid = id;
	vcore->kvm = kvm;
	FUNC0(&vcore->preempt_list);

	return vcore;
}