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
typedef  int /*<<< orphan*/  u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_one_reg {int id; } ;
typedef  unsigned int s64 ;

/* Variables and functions */
 unsigned int CAUSEF_DC ; 
 int EINVAL ; 
#define  KVM_REG_MIPS_COUNT_CTL 162 
#define  KVM_REG_MIPS_COUNT_HZ 161 
#define  KVM_REG_MIPS_COUNT_RESUME 160 
#define  KVM_REG_MIPS_CP0_BADVADDR 159 
#define  KVM_REG_MIPS_CP0_CAUSE 158 
#define  KVM_REG_MIPS_CP0_COMPARE 157 
#define  KVM_REG_MIPS_CP0_CONFIG 156 
#define  KVM_REG_MIPS_CP0_CONFIG1 155 
#define  KVM_REG_MIPS_CP0_CONFIG2 154 
#define  KVM_REG_MIPS_CP0_CONFIG3 153 
#define  KVM_REG_MIPS_CP0_CONFIG4 152 
#define  KVM_REG_MIPS_CP0_CONFIG5 151 
#define  KVM_REG_MIPS_CP0_CONFIG7 150 
#define  KVM_REG_MIPS_CP0_CONTEXT 149 
#define  KVM_REG_MIPS_CP0_COUNT 148 
#define  KVM_REG_MIPS_CP0_EBASE 147 
#define  KVM_REG_MIPS_CP0_ENTRYHI 146 
#define  KVM_REG_MIPS_CP0_ENTRYLO0 145 
#define  KVM_REG_MIPS_CP0_ENTRYLO1 144 
#define  KVM_REG_MIPS_CP0_EPC 143 
#define  KVM_REG_MIPS_CP0_ERROREPC 142 
#define  KVM_REG_MIPS_CP0_HWRENA 141 
#define  KVM_REG_MIPS_CP0_INDEX 140 
#define  KVM_REG_MIPS_CP0_INTCTL 139 
#define  KVM_REG_MIPS_CP0_KSCRATCH1 138 
#define  KVM_REG_MIPS_CP0_KSCRATCH2 137 
#define  KVM_REG_MIPS_CP0_KSCRATCH3 136 
#define  KVM_REG_MIPS_CP0_KSCRATCH4 135 
#define  KVM_REG_MIPS_CP0_KSCRATCH5 134 
#define  KVM_REG_MIPS_CP0_KSCRATCH6 133 
#define  KVM_REG_MIPS_CP0_PAGEMASK 132 
#define  KVM_REG_MIPS_CP0_PRID 131 
#define  KVM_REG_MIPS_CP0_STATUS 130 
#define  KVM_REG_MIPS_CP0_USERLOCAL 129 
#define  KVM_REG_MIPS_CP0_WIRED 128 
 int MIPS_EBASE_CPUNUM ; 
 int /*<<< orphan*/  FUNC0 (struct mips_coproc*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mips_coproc*,int,unsigned int) ; 
 unsigned int FUNC2 (struct kvm_vcpu*) ; 
 unsigned int FUNC3 (struct kvm_vcpu*) ; 
 unsigned int FUNC4 (struct kvm_vcpu*) ; 
 unsigned int FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int FUNC8 (struct kvm_vcpu*,unsigned int) ; 
 int FUNC9 (struct kvm_vcpu*,unsigned int) ; 
 int FUNC10 (struct kvm_vcpu*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,unsigned int) ; 
 unsigned int FUNC13 (struct mips_coproc*) ; 
 unsigned int FUNC14 (struct mips_coproc*) ; 
 unsigned int FUNC15 (struct mips_coproc*) ; 
 unsigned int FUNC16 (struct mips_coproc*) ; 
 unsigned int FUNC17 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC18 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC27 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC29 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC30 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC31 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC32 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC33 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC34 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC35 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC36 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC37 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC38 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC39 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC40 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC41 (struct mips_coproc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC42 (struct mips_coproc*,unsigned int) ; 

__attribute__((used)) static int FUNC43(struct kvm_vcpu *vcpu,
				     const struct kvm_one_reg *reg,
				     s64 v)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	int ret = 0;
	unsigned int cur, change;

	switch (reg->id) {
	case KVM_REG_MIPS_CP0_INDEX:
		FUNC31(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_ENTRYLO0:
		FUNC26(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_ENTRYLO1:
		FUNC27(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_CONTEXT:
		FUNC24(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_USERLOCAL:
		FUNC41(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_PAGEMASK:
		FUNC38(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_WIRED:
		FUNC42(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_HWRENA:
		FUNC30(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_BADVADDR:
		FUNC18(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_ENTRYHI:
		FUNC25(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_STATUS:
		FUNC40(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_INTCTL:
		/* No VInt, so no VS, read-only for now */
		break;
	case KVM_REG_MIPS_CP0_EPC:
		FUNC28(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_PRID:
		FUNC39(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_EBASE:
		/*
		 * Allow core number to be written, but the exception base must
		 * remain in guest KSeg0.
		 */
		FUNC1(cop0, 0x1ffff000 | MIPS_EBASE_CPUNUM,
					  v);
		break;
	case KVM_REG_MIPS_CP0_COUNT:
		FUNC12(vcpu, v);
		break;
	case KVM_REG_MIPS_CP0_COMPARE:
		FUNC11(vcpu, v, false);
		break;
	case KVM_REG_MIPS_CP0_CAUSE:
		/*
		 * If the timer is stopped or started (DC bit) it must look
		 * atomic with changes to the interrupt pending bits (TI, IRQ5).
		 * A timer interrupt should not happen in between.
		 */
		if ((FUNC13(cop0) ^ v) & CAUSEF_DC) {
			if (v & CAUSEF_DC) {
				/* disable timer first */
				FUNC6(vcpu);
				FUNC0(cop0, (u32)~CAUSEF_DC,
							  v);
			} else {
				/* enable timer last */
				FUNC0(cop0, (u32)~CAUSEF_DC,
							  v);
				FUNC7(vcpu);
			}
		} else {
			FUNC19(cop0, v);
		}
		break;
	case KVM_REG_MIPS_CP0_CONFIG:
		/* read-only for now */
		break;
	case KVM_REG_MIPS_CP0_CONFIG1:
		cur = FUNC14(cop0);
		change = (cur ^ v) & FUNC2(vcpu);
		if (change) {
			v = cur ^ change;
			FUNC20(cop0, v);
		}
		break;
	case KVM_REG_MIPS_CP0_CONFIG2:
		/* read-only for now */
		break;
	case KVM_REG_MIPS_CP0_CONFIG3:
		cur = FUNC15(cop0);
		change = (cur ^ v) & FUNC3(vcpu);
		if (change) {
			v = cur ^ change;
			FUNC21(cop0, v);
		}
		break;
	case KVM_REG_MIPS_CP0_CONFIG4:
		cur = FUNC16(cop0);
		change = (cur ^ v) & FUNC4(vcpu);
		if (change) {
			v = cur ^ change;
			FUNC22(cop0, v);
		}
		break;
	case KVM_REG_MIPS_CP0_CONFIG5:
		cur = FUNC17(cop0);
		change = (cur ^ v) & FUNC5(vcpu);
		if (change) {
			v = cur ^ change;
			FUNC23(cop0, v);
		}
		break;
	case KVM_REG_MIPS_CP0_CONFIG7:
		/* writes ignored */
		break;
	case KVM_REG_MIPS_COUNT_CTL:
		ret = FUNC8(vcpu, v);
		break;
	case KVM_REG_MIPS_COUNT_RESUME:
		ret = FUNC10(vcpu, v);
		break;
	case KVM_REG_MIPS_COUNT_HZ:
		ret = FUNC9(vcpu, v);
		break;
	case KVM_REG_MIPS_CP0_ERROREPC:
		FUNC29(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_KSCRATCH1:
		FUNC32(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_KSCRATCH2:
		FUNC33(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_KSCRATCH3:
		FUNC34(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_KSCRATCH4:
		FUNC35(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_KSCRATCH5:
		FUNC36(cop0, v);
		break;
	case KVM_REG_MIPS_CP0_KSCRATCH6:
		FUNC37(cop0, v);
		break;
	default:
		return -EINVAL;
	}
	return ret;
}