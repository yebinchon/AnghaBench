#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int gs_enabled; TYPE_5__* sie_block; } ;
struct TYPE_15__ {int /*<<< orphan*/  instruction_gs; } ;
struct kvm_vcpu {TYPE_6__ arch; TYPE_3__* run; int /*<<< orphan*/  kvm; TYPE_7__ stat; } ;
struct gs_cb {int dummy; } ;
struct TYPE_12__ {struct gs_cb* gs_cb; } ;
struct TYPE_16__ {TYPE_4__ thread; } ;
struct TYPE_13__ {int /*<<< orphan*/  ecd; int /*<<< orphan*/  ecb; } ;
struct TYPE_9__ {int /*<<< orphan*/  gscb; } ;
struct TYPE_10__ {TYPE_1__ regs; } ;
struct TYPE_11__ {TYPE_2__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECB_GS ; 
 int /*<<< orphan*/  ECD_HOSTREGMGMT ; 
 int /*<<< orphan*/  PGM_OPERATION ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 TYPE_8__* current ; 
 int FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct gs_cb*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct kvm_vcpu *vcpu)
{
	vcpu->stat.instruction_gs++;

	if (FUNC7(vcpu->kvm, 133)) {
		FUNC0(vcpu, 3, "%s", "ENABLE: GS (lazy)");
		FUNC4();
		FUNC1(2, 4);
		current->thread.gs_cb = (struct gs_cb *)&vcpu->run->s.regs.gscb;
		FUNC6(current->thread.gs_cb);
		FUNC5();
		vcpu->arch.sie_block->ecb |= ECB_GS;
		vcpu->arch.sie_block->ecd |= ECD_HOSTREGMGMT;
		vcpu->arch.gs_enabled = 1;
		FUNC3(vcpu);
		return 0;
	} else
		return FUNC2(vcpu, PGM_OPERATION);
}