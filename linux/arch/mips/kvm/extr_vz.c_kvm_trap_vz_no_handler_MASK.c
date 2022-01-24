#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int host_cp0_cause; unsigned long host_cp0_badvaddr; scalar_t__ pc; } ;
struct kvm_vcpu {TYPE_1__* run; TYPE_2__ arch; } ;
struct TYPE_3__ {int /*<<< orphan*/  exit_reason; } ;

/* Variables and functions */
 int CAUSEB_EXCCODE ; 
 int CAUSEF_BD ; 
 int CAUSEF_EXCCODE ; 
 int /*<<< orphan*/  KVM_EXIT_INTERNAL_ERROR ; 
 int RESUME_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int*,int,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,struct kvm_vcpu*,int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	u32 *opc = (u32 *) vcpu->arch.pc;
	u32 cause = vcpu->arch.host_cp0_cause;
	u32 exccode = (cause & CAUSEF_EXCCODE) >> CAUSEB_EXCCODE;
	unsigned long badvaddr = vcpu->arch.host_cp0_badvaddr;
	u32 inst = 0;

	/*
	 *  Fetch the instruction.
	 */
	if (cause & CAUSEF_BD)
		opc += 1;
	FUNC2(opc, vcpu, &inst);

	FUNC1("Exception Code: %d not handled @ PC: %p, inst: 0x%08x BadVaddr: %#lx Status: %#x\n",
		exccode, opc, inst, badvaddr,
		FUNC3());
	FUNC0(vcpu);
	vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
	return RESUME_HOST;
}