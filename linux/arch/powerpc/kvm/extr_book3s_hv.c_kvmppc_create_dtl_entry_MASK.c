#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct lppaca {void* dtl_idx; } ;
struct kvmppc_vcore {scalar_t__ tb_offset; scalar_t__ pcpu; } ;
struct TYPE_7__ {int dirty; struct dtl_entry* pinned_addr; struct dtl_entry* pinned_end; } ;
struct TYPE_6__ {scalar_t__ msr; } ;
struct TYPE_5__ {struct lppaca* pinned_addr; } ;
struct TYPE_8__ {unsigned long stolen_logged; TYPE_3__ dtl; scalar_t__ dtl_index; struct dtl_entry* dtl_ptr; TYPE_2__ shregs; scalar_t__ ptid; int /*<<< orphan*/  tbacct_lock; scalar_t__ busy_stolen; TYPE_1__ vpa; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct dtl_entry {int dispatch_reason; void* srr1; void* srr0; int /*<<< orphan*/  enqueue_to_dispatch_time; void* timebase; int /*<<< orphan*/  processor_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 void* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct dtl_entry*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC9 (struct kvmppc_vcore*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct kvm_vcpu *vcpu,
				    struct kvmppc_vcore *vc)
{
	struct dtl_entry *dt;
	struct lppaca *vpa;
	unsigned long stolen;
	unsigned long core_stolen;
	u64 now;
	unsigned long flags;

	dt = vcpu->arch.dtl_ptr;
	vpa = vcpu->arch.vpa.pinned_addr;
	now = FUNC5();
	core_stolen = FUNC9(vc, now);
	stolen = core_stolen - vcpu->arch.stolen_logged;
	vcpu->arch.stolen_logged = core_stolen;
	FUNC7(&vcpu->arch.tbacct_lock, flags);
	stolen += vcpu->arch.busy_stolen;
	vcpu->arch.busy_stolen = 0;
	FUNC8(&vcpu->arch.tbacct_lock, flags);
	if (!dt || !vpa)
		return;
	FUNC4(dt, 0, sizeof(struct dtl_entry));
	dt->dispatch_reason = 7;
	dt->processor_id = FUNC0(vc->pcpu + vcpu->arch.ptid);
	dt->timebase = FUNC2(now + vc->tb_offset);
	dt->enqueue_to_dispatch_time = FUNC1(stolen);
	dt->srr0 = FUNC2(FUNC3(vcpu));
	dt->srr1 = FUNC2(vcpu->arch.shregs.msr);
	++dt;
	if (dt == vcpu->arch.dtl.pinned_end)
		dt = vcpu->arch.dtl.pinned_addr;
	vcpu->arch.dtl_ptr = dt;
	/* order writing *dt vs. writing vpa->dtl_idx */
	FUNC6();
	vpa->dtl_idx = FUNC2(++vcpu->arch.dtl_index);
	vcpu->arch.dtl.dirty = true;
}