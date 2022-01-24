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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct alt_instr {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_INSN_BRANCH_NOLINK ; 
 int /*<<< orphan*/  AARCH64_INSN_LDST_STORE_PAIR_PRE_INDEX ; 
 int /*<<< orphan*/  AARCH64_INSN_MOVEWIDE_KEEP ; 
 int /*<<< orphan*/  AARCH64_INSN_MOVEWIDE_ZERO ; 
 int /*<<< orphan*/  AARCH64_INSN_REG_0 ; 
 int /*<<< orphan*/  AARCH64_INSN_REG_1 ; 
 int /*<<< orphan*/  AARCH64_INSN_REG_SP ; 
 int /*<<< orphan*/  AARCH64_INSN_VARIANT_64BIT ; 
 int /*<<< orphan*/  ARM64_HARDEN_EL2_VECTORS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ KVM_VECTOR_PREAMBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __kvm_hyp_vector ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int tag_lsb ; 
 int tag_val ; 
 int va_mask ; 

void FUNC11(struct alt_instr *alt,
			     __le32 *origptr, __le32 *updptr, int nr_inst)
{
	u64 addr;
	u32 insn;

	FUNC0(nr_inst != 5);

	if (FUNC9() || !FUNC8(ARM64_HARDEN_EL2_VECTORS)) {
		FUNC2(FUNC8(ARM64_HARDEN_EL2_VECTORS));
		return;
	}

	if (!va_mask)
		FUNC6();

	/*
	 * Compute HYP VA by using the same computation as kern_hyp_va()
	 */
	addr = (uintptr_t)FUNC10(__kvm_hyp_vector);
	addr &= va_mask;
	addr |= tag_val << tag_lsb;

	/* Use PC[10:7] to branch to the same vector in KVM */
	addr |= ((u64)origptr & FUNC1(10, 7));

	/*
	 * Branch over the preamble in order to avoid the initial store on
	 * the stack (which we already perform in the hardening vectors).
	 */
	addr += KVM_VECTOR_PREAMBLE;

	/* stp x0, x1, [sp, #-16]! */
	insn = FUNC4(AARCH64_INSN_REG_0,
						AARCH64_INSN_REG_1,
						AARCH64_INSN_REG_SP,
						-16,
						AARCH64_INSN_VARIANT_64BIT,
						AARCH64_INSN_LDST_STORE_PAIR_PRE_INDEX);
	*updptr++ = FUNC7(insn);

	/* movz x0, #(addr & 0xffff) */
	insn = FUNC5(AARCH64_INSN_REG_0,
					 (u16)addr,
					 0,
					 AARCH64_INSN_VARIANT_64BIT,
					 AARCH64_INSN_MOVEWIDE_ZERO);
	*updptr++ = FUNC7(insn);

	/* movk x0, #((addr >> 16) & 0xffff), lsl #16 */
	insn = FUNC5(AARCH64_INSN_REG_0,
					 (u16)(addr >> 16),
					 16,
					 AARCH64_INSN_VARIANT_64BIT,
					 AARCH64_INSN_MOVEWIDE_KEEP);
	*updptr++ = FUNC7(insn);

	/* movk x0, #((addr >> 32) & 0xffff), lsl #32 */
	insn = FUNC5(AARCH64_INSN_REG_0,
					 (u16)(addr >> 32),
					 32,
					 AARCH64_INSN_VARIANT_64BIT,
					 AARCH64_INSN_MOVEWIDE_KEEP);
	*updptr++ = FUNC7(insn);

	/* br x0 */
	insn = FUNC3(AARCH64_INSN_REG_0,
					   AARCH64_INSN_BRANCH_NOLINK);
	*updptr++ = FUNC7(insn);
}