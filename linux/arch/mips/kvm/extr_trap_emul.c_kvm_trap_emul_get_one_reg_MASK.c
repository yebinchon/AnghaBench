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
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {long count_ctl; long count_hz; int /*<<< orphan*/  count_resume; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_one_reg {int id; } ;
typedef  long s64 ;

/* Variables and functions */
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
 long FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct mips_coproc*) ; 
 scalar_t__ FUNC3 (struct mips_coproc*) ; 
 scalar_t__ FUNC4 (struct mips_coproc*) ; 
 scalar_t__ FUNC5 (struct mips_coproc*) ; 
 scalar_t__ FUNC6 (struct mips_coproc*) ; 
 scalar_t__ FUNC7 (struct mips_coproc*) ; 
 scalar_t__ FUNC8 (struct mips_coproc*) ; 
 scalar_t__ FUNC9 (struct mips_coproc*) ; 
 scalar_t__ FUNC10 (struct mips_coproc*) ; 
 scalar_t__ FUNC11 (struct mips_coproc*) ; 
 scalar_t__ FUNC12 (struct mips_coproc*) ; 
 scalar_t__ FUNC13 (struct mips_coproc*) ; 
 scalar_t__ FUNC14 (struct mips_coproc*) ; 
 long FUNC15 (struct mips_coproc*) ; 
 long FUNC16 (struct mips_coproc*) ; 
 scalar_t__ FUNC17 (struct mips_coproc*) ; 
 scalar_t__ FUNC18 (struct mips_coproc*) ; 
 scalar_t__ FUNC19 (struct mips_coproc*) ; 
 scalar_t__ FUNC20 (struct mips_coproc*) ; 
 scalar_t__ FUNC21 (struct mips_coproc*) ; 
 scalar_t__ FUNC22 (struct mips_coproc*) ; 
 scalar_t__ FUNC23 (struct mips_coproc*) ; 
 scalar_t__ FUNC24 (struct mips_coproc*) ; 
 scalar_t__ FUNC25 (struct mips_coproc*) ; 
 scalar_t__ FUNC26 (struct mips_coproc*) ; 
 scalar_t__ FUNC27 (struct mips_coproc*) ; 
 scalar_t__ FUNC28 (struct mips_coproc*) ; 
 scalar_t__ FUNC29 (struct mips_coproc*) ; 
 scalar_t__ FUNC30 (struct mips_coproc*) ; 
 scalar_t__ FUNC31 (struct mips_coproc*) ; 
 scalar_t__ FUNC32 (struct mips_coproc*) ; 

__attribute__((used)) static int FUNC33(struct kvm_vcpu *vcpu,
				     const struct kvm_one_reg *reg,
				     s64 *v)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;

	switch (reg->id) {
	case KVM_REG_MIPS_CP0_INDEX:
		*v = (long)FUNC20(cop0);
		break;
	case KVM_REG_MIPS_CP0_ENTRYLO0:
		*v = FUNC15(cop0);
		break;
	case KVM_REG_MIPS_CP0_ENTRYLO1:
		*v = FUNC16(cop0);
		break;
	case KVM_REG_MIPS_CP0_CONTEXT:
		*v = (long)FUNC12(cop0);
		break;
	case KVM_REG_MIPS_CP0_USERLOCAL:
		*v = (long)FUNC31(cop0);
		break;
	case KVM_REG_MIPS_CP0_PAGEMASK:
		*v = (long)FUNC28(cop0);
		break;
	case KVM_REG_MIPS_CP0_WIRED:
		*v = (long)FUNC32(cop0);
		break;
	case KVM_REG_MIPS_CP0_HWRENA:
		*v = (long)FUNC19(cop0);
		break;
	case KVM_REG_MIPS_CP0_BADVADDR:
		*v = (long)FUNC2(cop0);
		break;
	case KVM_REG_MIPS_CP0_ENTRYHI:
		*v = (long)FUNC14(cop0);
		break;
	case KVM_REG_MIPS_CP0_COMPARE:
		*v = (long)FUNC4(cop0);
		break;
	case KVM_REG_MIPS_CP0_STATUS:
		*v = (long)FUNC30(cop0);
		break;
	case KVM_REG_MIPS_CP0_INTCTL:
		*v = (long)FUNC21(cop0);
		break;
	case KVM_REG_MIPS_CP0_CAUSE:
		*v = (long)FUNC3(cop0);
		break;
	case KVM_REG_MIPS_CP0_EPC:
		*v = (long)FUNC17(cop0);
		break;
	case KVM_REG_MIPS_CP0_PRID:
		*v = (long)FUNC29(cop0);
		break;
	case KVM_REG_MIPS_CP0_EBASE:
		*v = (long)FUNC13(cop0);
		break;
	case KVM_REG_MIPS_CP0_CONFIG:
		*v = (long)FUNC5(cop0);
		break;
	case KVM_REG_MIPS_CP0_CONFIG1:
		*v = (long)FUNC6(cop0);
		break;
	case KVM_REG_MIPS_CP0_CONFIG2:
		*v = (long)FUNC7(cop0);
		break;
	case KVM_REG_MIPS_CP0_CONFIG3:
		*v = (long)FUNC8(cop0);
		break;
	case KVM_REG_MIPS_CP0_CONFIG4:
		*v = (long)FUNC9(cop0);
		break;
	case KVM_REG_MIPS_CP0_CONFIG5:
		*v = (long)FUNC10(cop0);
		break;
	case KVM_REG_MIPS_CP0_CONFIG7:
		*v = (long)FUNC11(cop0);
		break;
	case KVM_REG_MIPS_CP0_COUNT:
		*v = FUNC1(vcpu);
		break;
	case KVM_REG_MIPS_COUNT_CTL:
		*v = vcpu->arch.count_ctl;
		break;
	case KVM_REG_MIPS_COUNT_RESUME:
		*v = FUNC0(vcpu->arch.count_resume);
		break;
	case KVM_REG_MIPS_COUNT_HZ:
		*v = vcpu->arch.count_hz;
		break;
	case KVM_REG_MIPS_CP0_ERROREPC:
		*v = (long)FUNC18(cop0);
		break;
	case KVM_REG_MIPS_CP0_KSCRATCH1:
		*v = (long)FUNC22(cop0);
		break;
	case KVM_REG_MIPS_CP0_KSCRATCH2:
		*v = (long)FUNC23(cop0);
		break;
	case KVM_REG_MIPS_CP0_KSCRATCH3:
		*v = (long)FUNC24(cop0);
		break;
	case KVM_REG_MIPS_CP0_KSCRATCH4:
		*v = (long)FUNC25(cop0);
		break;
	case KVM_REG_MIPS_CP0_KSCRATCH5:
		*v = (long)FUNC26(cop0);
		break;
	case KVM_REG_MIPS_CP0_KSCRATCH6:
		*v = (long)FUNC27(cop0);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}