#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct kvmppc_vcore {int tb_offset; int tb_offset_applied; int pcr; int dpdes; int vtb; } ;
struct TYPE_7__ {int sprg0; int sprg1; int sprg2; int sprg3; int srr0; int srr1; } ;
struct TYPE_8__ {int purr; int spurr; int dawr; int dawrx; int ciabr; int ic; int pid; unsigned long psscr; int hfscr; TYPE_1__ shregs; struct kvmppc_vcore* vcore; } ;
struct kvm_vcpu {TYPE_5__* kvm; TYPE_2__ arch; } ;
typedef  scalar_t__ s64 ;
struct TYPE_9__ {int host_purr; int host_spurr; unsigned long fake_suspend; } ;
struct TYPE_12__ {TYPE_3__ kvm_hstate; } ;
struct TYPE_10__ {int host_lpid; int host_lpcr; } ;
struct TYPE_11__ {TYPE_4__ arch; } ;

/* Variables and functions */
 int BOOK3S_INTERRUPT_HV_DECREMENTER ; 
 int PCR_MASK ; 
 unsigned long PSSCR_EC ; 
 unsigned long PSSCR_FAKE_SUSPEND_LG ; 
 int PSSCR_GUEST_VIS ; 
 int /*<<< orphan*/  SPRN_AMOR ; 
 int /*<<< orphan*/  SPRN_CIABR ; 
 int /*<<< orphan*/  SPRN_DAWR ; 
 int /*<<< orphan*/  SPRN_DAWRX ; 
 int /*<<< orphan*/  SPRN_DPDES ; 
 int /*<<< orphan*/  SPRN_HDEC ; 
 int /*<<< orphan*/  SPRN_HFSCR ; 
 int /*<<< orphan*/  SPRN_IC ; 
 int /*<<< orphan*/  SPRN_LPCR ; 
 int /*<<< orphan*/  SPRN_LPID ; 
 int /*<<< orphan*/  SPRN_PCR ; 
 int /*<<< orphan*/  SPRN_PID ; 
 int /*<<< orphan*/  SPRN_PSSCR ; 
 int /*<<< orphan*/  SPRN_PURR ; 
 int /*<<< orphan*/  SPRN_SPRG0 ; 
 int /*<<< orphan*/  SPRN_SPRG1 ; 
 int /*<<< orphan*/  SPRN_SPRG2 ; 
 int /*<<< orphan*/  SPRN_SPRG3 ; 
 int /*<<< orphan*/  SPRN_SPURR ; 
 int /*<<< orphan*/  SPRN_SRR0 ; 
 int /*<<< orphan*/  SPRN_SRR1 ; 
 int /*<<< orphan*/  SPRN_TBU40 ; 
 int /*<<< orphan*/  SPRN_VTB ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 TYPE_6__* local_paca ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu, u64 time_limit,
				     unsigned long lpcr)
{
	struct kvmppc_vcore *vc = vcpu->arch.vcore;
	s64 hdec;
	u64 tb, purr, spurr;
	int trap;
	unsigned long host_hfscr = FUNC4(SPRN_HFSCR);
	unsigned long host_ciabr = FUNC4(SPRN_CIABR);
	unsigned long host_dawr = FUNC4(SPRN_DAWR);
	unsigned long host_dawrx = FUNC4(SPRN_DAWRX);
	unsigned long host_psscr = FUNC4(SPRN_PSSCR);
	unsigned long host_pidr = FUNC4(SPRN_PID);

	hdec = time_limit - FUNC5();
	if (hdec < 0)
		return BOOK3S_INTERRUPT_HV_DECREMENTER;
	FUNC6(SPRN_HDEC, hdec);

	if (vc->tb_offset) {
		u64 new_tb = FUNC5() + vc->tb_offset;
		FUNC6(SPRN_TBU40, new_tb);
		tb = FUNC5();
		if ((tb & 0xffffff) < (new_tb & 0xffffff))
			FUNC6(SPRN_TBU40, new_tb + 0x1000000);
		vc->tb_offset_applied = vc->tb_offset;
	}

	if (vc->pcr)
		FUNC6(SPRN_PCR, vc->pcr | PCR_MASK);
	FUNC6(SPRN_DPDES, vc->dpdes);
	FUNC6(SPRN_VTB, vc->vtb);

	local_paca->kvm_hstate.host_purr = FUNC4(SPRN_PURR);
	local_paca->kvm_hstate.host_spurr = FUNC4(SPRN_SPURR);
	FUNC6(SPRN_PURR, vcpu->arch.purr);
	FUNC6(SPRN_SPURR, vcpu->arch.spurr);

	if (FUNC1()) {
		FUNC6(SPRN_DAWR, vcpu->arch.dawr);
		FUNC6(SPRN_DAWRX, vcpu->arch.dawrx);
	}
	FUNC6(SPRN_CIABR, vcpu->arch.ciabr);
	FUNC6(SPRN_IC, vcpu->arch.ic);
	FUNC6(SPRN_PID, vcpu->arch.pid);

	FUNC6(SPRN_PSSCR, vcpu->arch.psscr | PSSCR_EC |
	      (local_paca->kvm_hstate.fake_suspend << PSSCR_FAKE_SUSPEND_LG));

	FUNC6(SPRN_HFSCR, vcpu->arch.hfscr);

	FUNC6(SPRN_SPRG0, vcpu->arch.shregs.sprg0);
	FUNC6(SPRN_SPRG1, vcpu->arch.shregs.sprg1);
	FUNC6(SPRN_SPRG2, vcpu->arch.shregs.sprg2);
	FUNC6(SPRN_SPRG3, vcpu->arch.shregs.sprg3);

	FUNC6(SPRN_AMOR, ~0UL);

	FUNC6(SPRN_LPCR, lpcr);
	FUNC2();

	FUNC3(vcpu);

	FUNC6(SPRN_SRR0, vcpu->arch.shregs.srr0);
	FUNC6(SPRN_SRR1, vcpu->arch.shregs.srr1);

	trap = FUNC0(vcpu);

	/* Advance host PURR/SPURR by the amount used by guest */
	purr = FUNC4(SPRN_PURR);
	spurr = FUNC4(SPRN_SPURR);
	FUNC6(SPRN_PURR, local_paca->kvm_hstate.host_purr +
	      purr - vcpu->arch.purr);
	FUNC6(SPRN_SPURR, local_paca->kvm_hstate.host_spurr +
	      spurr - vcpu->arch.spurr);
	vcpu->arch.purr = purr;
	vcpu->arch.spurr = spurr;

	vcpu->arch.ic = FUNC4(SPRN_IC);
	vcpu->arch.pid = FUNC4(SPRN_PID);
	vcpu->arch.psscr = FUNC4(SPRN_PSSCR) & PSSCR_GUEST_VIS;

	vcpu->arch.shregs.sprg0 = FUNC4(SPRN_SPRG0);
	vcpu->arch.shregs.sprg1 = FUNC4(SPRN_SPRG1);
	vcpu->arch.shregs.sprg2 = FUNC4(SPRN_SPRG2);
	vcpu->arch.shregs.sprg3 = FUNC4(SPRN_SPRG3);

	/* Preserve PSSCR[FAKE_SUSPEND] until we've called kvmppc_save_tm_hv */
	FUNC6(SPRN_PSSCR, host_psscr |
	      (local_paca->kvm_hstate.fake_suspend << PSSCR_FAKE_SUSPEND_LG));
	FUNC6(SPRN_HFSCR, host_hfscr);
	FUNC6(SPRN_CIABR, host_ciabr);
	FUNC6(SPRN_DAWR, host_dawr);
	FUNC6(SPRN_DAWRX, host_dawrx);
	FUNC6(SPRN_PID, host_pidr);

	/*
	 * Since this is radix, do a eieio; tlbsync; ptesync sequence in
	 * case we interrupted the guest between a tlbie and a ptesync.
	 */
	asm volatile("eieio; tlbsync; ptesync");

	FUNC6(SPRN_LPID, vcpu->kvm->arch.host_lpid);	/* restore host LPID */
	FUNC2();

	vc->dpdes = FUNC4(SPRN_DPDES);
	vc->vtb = FUNC4(SPRN_VTB);
	FUNC6(SPRN_DPDES, 0);
	if (vc->pcr)
		FUNC6(SPRN_PCR, PCR_MASK);

	if (vc->tb_offset_applied) {
		u64 new_tb = FUNC5() - vc->tb_offset_applied;
		FUNC6(SPRN_TBU40, new_tb);
		tb = FUNC5();
		if ((tb & 0xffffff) < (new_tb & 0xffffff))
			FUNC6(SPRN_TBU40, new_tb + 0x1000000);
		vc->tb_offset_applied = 0;
	}

	FUNC6(SPRN_HDEC, 0x7fffffff);
	FUNC6(SPRN_LPCR, vcpu->kvm->arch.host_lpcr);

	return trap;
}