#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  regs; int /*<<< orphan*/  fpc; } ;
struct TYPE_14__ {int /*<<< orphan*/ * host_gscb; scalar_t__ gs_enabled; TYPE_9__ host_fpregs; int /*<<< orphan*/  host_acrs; TYPE_4__* sie_block; int /*<<< orphan*/  pfault_compare; int /*<<< orphan*/  pfault_select; int /*<<< orphan*/  pfault_token; } ;
struct kvm_vcpu {TYPE_11__ arch; TYPE_7__* run; } ;
struct TYPE_17__ {int bpbc; int /*<<< orphan*/  pfc; int /*<<< orphan*/  pfs; int /*<<< orphan*/  pft; int /*<<< orphan*/  gbea; int /*<<< orphan*/  pp; int /*<<< orphan*/  todpr; int /*<<< orphan*/  ckc; int /*<<< orphan*/  cputm; int /*<<< orphan*/  crs; int /*<<< orphan*/  prefix; } ;
struct TYPE_18__ {TYPE_2__ regs; } ;
struct kvm_run {TYPE_3__ s; int /*<<< orphan*/  psw_addr; int /*<<< orphan*/  psw_mask; } ;
struct TYPE_23__ {int /*<<< orphan*/  regs; int /*<<< orphan*/  fpc; } ;
struct TYPE_20__ {int /*<<< orphan*/  fpc; int /*<<< orphan*/  acrs; } ;
struct TYPE_21__ {TYPE_5__ regs; } ;
struct TYPE_22__ {TYPE_6__ s; } ;
struct TYPE_16__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  mask; } ;
struct TYPE_19__ {int fpf; int /*<<< orphan*/  gbea; int /*<<< orphan*/  pp; int /*<<< orphan*/  todpr; int /*<<< orphan*/  ckc; int /*<<< orphan*/  gcr; TYPE_1__ gpsw; } ;
struct TYPE_13__ {int /*<<< orphan*/ * gs_cb; TYPE_8__ fpu; } ;
struct TYPE_15__ {TYPE_10__ thread; } ;

/* Variables and functions */
 int FPF_BPBC ; 
 scalar_t__ MACHINE_HAS_GS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 TYPE_12__* current ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
	kvm_run->psw_mask = vcpu->arch.sie_block->gpsw.mask;
	kvm_run->psw_addr = vcpu->arch.sie_block->gpsw.addr;
	kvm_run->s.regs.prefix = FUNC3(vcpu);
	FUNC4(&kvm_run->s.regs.crs, &vcpu->arch.sie_block->gcr, 128);
	kvm_run->s.regs.cputm = FUNC2(vcpu);
	kvm_run->s.regs.ckc = vcpu->arch.sie_block->ckc;
	kvm_run->s.regs.todpr = vcpu->arch.sie_block->todpr;
	kvm_run->s.regs.pp = vcpu->arch.sie_block->pp;
	kvm_run->s.regs.gbea = vcpu->arch.sie_block->gbea;
	kvm_run->s.regs.pft = vcpu->arch.pfault_token;
	kvm_run->s.regs.pfs = vcpu->arch.pfault_select;
	kvm_run->s.regs.pfc = vcpu->arch.pfault_compare;
	kvm_run->s.regs.bpbc = (vcpu->arch.sie_block->fpf & FPF_BPBC) == FPF_BPBC;
	FUNC9(vcpu->run->s.regs.acrs);
	FUNC7(vcpu->arch.host_acrs);
	/* Save guest register state */
	FUNC10();
	vcpu->run->s.regs.fpc = current->thread.fpu.fpc;
	/* Restore will be done lazily at return */
	current->thread.fpu.fpc = vcpu->arch.host_fpregs.fpc;
	current->thread.fpu.regs = vcpu->arch.host_fpregs.regs;
	if (MACHINE_HAS_GS) {
		FUNC1(2, 4);
		if (vcpu->arch.gs_enabled)
			FUNC11(current->thread.gs_cb);
		FUNC5();
		current->thread.gs_cb = vcpu->arch.host_gscb;
		FUNC8(vcpu->arch.host_gscb);
		FUNC6();
		if (!vcpu->arch.host_gscb)
			FUNC0(2, 4);
		vcpu->arch.host_gscb = NULL;
	}
	/* SIE will save etoken directly into SDNX and therefore kvm_run */
}