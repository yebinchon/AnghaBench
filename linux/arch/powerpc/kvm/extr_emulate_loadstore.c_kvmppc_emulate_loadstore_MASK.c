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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_12__ {int /*<<< orphan*/  msr; } ;
struct TYPE_11__ {int mmio_vsx_copy_nums; int mmio_sp64_extend; int mmio_vmx_copy_nums; int mmio_vmx_offset; unsigned long vaddr_accessed; unsigned long paddr_accessed; void* mmio_copy_type; TYPE_6__ regs; TYPE_1__* shared; scalar_t__ mmio_host_swabbed; scalar_t__ mmio_sign_extend; scalar_t__ mmio_vsx_offset; } ;
struct kvm_vcpu {TYPE_5__ arch; TYPE_4__* kvm; struct kvm_run* run; } ;
struct kvm_run {int dummy; } ;
struct instruction_op {int type; int reg; int vsx_flags; int element_size; int /*<<< orphan*/  ea; int /*<<< orphan*/  update_reg; int /*<<< orphan*/  val; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;
struct TYPE_9__ {TYPE_2__* kvm_ops; } ;
struct TYPE_10__ {TYPE_3__ arch; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* giveup_ext ) (struct kvm_vcpu*,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  msr; } ;

/* Variables and functions */
 int BYTEREV ; 
#define  CACHEOP 136 
 int /*<<< orphan*/  EMULATED_INST_EXITS ; 
 int EMULATE_DONE ; 
 int EMULATE_FAIL ; 
 int FPCONV ; 
 int FUNC0 (int) ; 
 int INSTR_TYPE_MASK ; 
 int /*<<< orphan*/  INST_GENERIC ; 
 void* KVMPPC_VMX_COPY_BYTE ; 
 void* KVMPPC_VMX_COPY_DWORD ; 
 void* KVMPPC_VMX_COPY_HWORD ; 
 void* KVMPPC_VMX_COPY_WORD ; 
 void* KVMPPC_VSX_COPY_DWORD ; 
 void* KVMPPC_VSX_COPY_DWORD_LOAD_DUMP ; 
 void* KVMPPC_VSX_COPY_NONE ; 
 void* KVMPPC_VSX_COPY_WORD ; 
 void* KVMPPC_VSX_COPY_WORD_LOAD_DUMP ; 
 int KVM_MMIO_REG_FPR ; 
 int KVM_MMIO_REG_VMX ; 
 int KVM_MMIO_REG_VSX ; 
#define  LOAD 135 
#define  LOAD_FP 134 
#define  LOAD_VMX 133 
#define  LOAD_VSX 132 
 int /*<<< orphan*/  MSR_FP ; 
 int /*<<< orphan*/  MSR_VEC ; 
 int /*<<< orphan*/  MSR_VSX ; 
 int SIGNEXT ; 
#define  STORE 131 
#define  STORE_FP 130 
#define  STORE_VMX 129 
#define  STORE_VSX 128 
 int UPDATE ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int VSX_CHECK_VEC ; 
 int VSX_FPCONV ; 
 int VSX_SPLAT ; 
 scalar_t__ FUNC2 (struct instruction_op*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct kvm_vcpu*) ; 
 int FUNC12 (struct kvm_run*,struct kvm_vcpu*,int,int,int) ; 
 int FUNC13 (struct kvm_run*,struct kvm_vcpu*,int,int,int) ; 
 int FUNC14 (struct kvm_run*,struct kvm_vcpu*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC15 (struct kvm_run*,struct kvm_vcpu*,int,int,int) ; 
 int FUNC16 (struct kvm_run*,struct kvm_vcpu*,int,int,int) ; 
 int FUNC17 (struct kvm_run*,struct kvm_vcpu*,int,int,int,int) ; 
 int FUNC18 (struct kvm_run*,struct kvm_vcpu*,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,scalar_t__,int) ; 

int FUNC26(struct kvm_vcpu *vcpu)
{
	struct kvm_run *run = vcpu->run;
	u32 inst;
	int ra, rs, rt;
	enum emulation_result emulated = EMULATE_FAIL;
	int advance = 1;
	struct instruction_op op;

	/* this default type might be overwritten by subcategories */
	FUNC19(vcpu, EMULATED_INST_EXITS);

	emulated = FUNC10(vcpu, INST_GENERIC, &inst);
	if (emulated != EMULATE_DONE)
		return emulated;

	ra = FUNC3(inst);
	rs = FUNC4(inst);
	rt = FUNC5(inst);

	vcpu->arch.mmio_vsx_copy_nums = 0;
	vcpu->arch.mmio_vsx_offset = 0;
	vcpu->arch.mmio_copy_type = KVMPPC_VSX_COPY_NONE;
	vcpu->arch.mmio_sp64_extend = 0;
	vcpu->arch.mmio_sign_extend = 0;
	vcpu->arch.mmio_vmx_copy_nums = 0;
	vcpu->arch.mmio_vmx_offset = 0;
	vcpu->arch.mmio_host_swabbed = 0;

	emulated = EMULATE_FAIL;
	vcpu->arch.regs.msr = vcpu->arch.shared->msr;
	if (FUNC2(&op, &vcpu->arch.regs, inst) == 0) {
		int type = op.type & INSTR_TYPE_MASK;
		int size = FUNC0(op.type);

		switch (type) {
		case LOAD:  {
			int instr_byte_swap = op.type & BYTEREV;

			if (op.type & SIGNEXT)
				emulated = FUNC13(run, vcpu,
						op.reg, size, !instr_byte_swap);
			else
				emulated = FUNC12(run, vcpu,
						op.reg, size, !instr_byte_swap);

			if ((op.type & UPDATE) && (emulated != EMULATE_FAIL))
				FUNC20(vcpu, op.update_reg, op.ea);

			break;
		}
#ifdef CONFIG_PPC_FPU
		case LOAD_FP:
			if (kvmppc_check_fp_disabled(vcpu))
				return EMULATE_DONE;

			if (op.type & FPCONV)
				vcpu->arch.mmio_sp64_extend = 1;

			if (op.type & SIGNEXT)
				emulated = kvmppc_handle_loads(run, vcpu,
					     KVM_MMIO_REG_FPR|op.reg, size, 1);
			else
				emulated = kvmppc_handle_load(run, vcpu,
					     KVM_MMIO_REG_FPR|op.reg, size, 1);

			if ((op.type & UPDATE) && (emulated != EMULATE_FAIL))
				kvmppc_set_gpr(vcpu, op.update_reg, op.ea);

			break;
#endif
#ifdef CONFIG_ALTIVEC
		case LOAD_VMX:
			if (kvmppc_check_altivec_disabled(vcpu))
				return EMULATE_DONE;

			/* Hardware enforces alignment of VMX accesses */
			vcpu->arch.vaddr_accessed &= ~((unsigned long)size - 1);
			vcpu->arch.paddr_accessed &= ~((unsigned long)size - 1);

			if (size == 16) { /* lvx */
				vcpu->arch.mmio_copy_type =
						KVMPPC_VMX_COPY_DWORD;
			} else if (size == 4) { /* lvewx  */
				vcpu->arch.mmio_copy_type =
						KVMPPC_VMX_COPY_WORD;
			} else if (size == 2) { /* lvehx  */
				vcpu->arch.mmio_copy_type =
						KVMPPC_VMX_COPY_HWORD;
			} else if (size == 1) { /* lvebx  */
				vcpu->arch.mmio_copy_type =
						KVMPPC_VMX_COPY_BYTE;
			} else
				break;

			vcpu->arch.mmio_vmx_offset =
				(vcpu->arch.vaddr_accessed & 0xf)/size;

			if (size == 16) {
				vcpu->arch.mmio_vmx_copy_nums = 2;
				emulated = kvmppc_handle_vmx_load(run,
						vcpu, KVM_MMIO_REG_VMX|op.reg,
						8, 1);
			} else {
				vcpu->arch.mmio_vmx_copy_nums = 1;
				emulated = kvmppc_handle_vmx_load(run, vcpu,
						KVM_MMIO_REG_VMX|op.reg,
						size, 1);
			}
			break;
#endif
#ifdef CONFIG_VSX
		case LOAD_VSX: {
			int io_size_each;

			if (op.vsx_flags & VSX_CHECK_VEC) {
				if (kvmppc_check_altivec_disabled(vcpu))
					return EMULATE_DONE;
			} else {
				if (kvmppc_check_vsx_disabled(vcpu))
					return EMULATE_DONE;
			}

			if (op.vsx_flags & VSX_FPCONV)
				vcpu->arch.mmio_sp64_extend = 1;

			if (op.element_size == 8)  {
				if (op.vsx_flags & VSX_SPLAT)
					vcpu->arch.mmio_copy_type =
						KVMPPC_VSX_COPY_DWORD_LOAD_DUMP;
				else
					vcpu->arch.mmio_copy_type =
						KVMPPC_VSX_COPY_DWORD;
			} else if (op.element_size == 4) {
				if (op.vsx_flags & VSX_SPLAT)
					vcpu->arch.mmio_copy_type =
						KVMPPC_VSX_COPY_WORD_LOAD_DUMP;
				else
					vcpu->arch.mmio_copy_type =
						KVMPPC_VSX_COPY_WORD;
			} else
				break;

			if (size < op.element_size) {
				/* precision convert case: lxsspx, etc */
				vcpu->arch.mmio_vsx_copy_nums = 1;
				io_size_each = size;
			} else { /* lxvw4x, lxvd2x, etc */
				vcpu->arch.mmio_vsx_copy_nums =
					size/op.element_size;
				io_size_each = op.element_size;
			}

			emulated = kvmppc_handle_vsx_load(run, vcpu,
					KVM_MMIO_REG_VSX|op.reg, io_size_each,
					1, op.type & SIGNEXT);
			break;
		}
#endif
		case STORE:
			/* if need byte reverse, op.val has been reversed by
			 * analyse_instr().
			 */
			emulated = FUNC14(run, vcpu, op.val,
					size, 1);

			if ((op.type & UPDATE) && (emulated != EMULATE_FAIL))
				FUNC20(vcpu, op.update_reg, op.ea);

			break;
#ifdef CONFIG_PPC_FPU
		case STORE_FP:
			if (kvmppc_check_fp_disabled(vcpu))
				return EMULATE_DONE;

			/* The FP registers need to be flushed so that
			 * kvmppc_handle_store() can read actual FP vals
			 * from vcpu->arch.
			 */
			if (vcpu->kvm->arch.kvm_ops->giveup_ext)
				vcpu->kvm->arch.kvm_ops->giveup_ext(vcpu,
						MSR_FP);

			if (op.type & FPCONV)
				vcpu->arch.mmio_sp64_extend = 1;

			emulated = kvmppc_handle_store(run, vcpu,
					VCPU_FPR(vcpu, op.reg), size, 1);

			if ((op.type & UPDATE) && (emulated != EMULATE_FAIL))
				kvmppc_set_gpr(vcpu, op.update_reg, op.ea);

			break;
#endif
#ifdef CONFIG_ALTIVEC
		case STORE_VMX:
			if (kvmppc_check_altivec_disabled(vcpu))
				return EMULATE_DONE;

			/* Hardware enforces alignment of VMX accesses. */
			vcpu->arch.vaddr_accessed &= ~((unsigned long)size - 1);
			vcpu->arch.paddr_accessed &= ~((unsigned long)size - 1);

			if (vcpu->kvm->arch.kvm_ops->giveup_ext)
				vcpu->kvm->arch.kvm_ops->giveup_ext(vcpu,
						MSR_VEC);
			if (size == 16) { /* stvx */
				vcpu->arch.mmio_copy_type =
						KVMPPC_VMX_COPY_DWORD;
			} else if (size == 4) { /* stvewx  */
				vcpu->arch.mmio_copy_type =
						KVMPPC_VMX_COPY_WORD;
			} else if (size == 2) { /* stvehx  */
				vcpu->arch.mmio_copy_type =
						KVMPPC_VMX_COPY_HWORD;
			} else if (size == 1) { /* stvebx  */
				vcpu->arch.mmio_copy_type =
						KVMPPC_VMX_COPY_BYTE;
			} else
				break;

			vcpu->arch.mmio_vmx_offset =
				(vcpu->arch.vaddr_accessed & 0xf)/size;

			if (size == 16) {
				vcpu->arch.mmio_vmx_copy_nums = 2;
				emulated = kvmppc_handle_vmx_store(run,
						vcpu, op.reg, 8, 1);
			} else {
				vcpu->arch.mmio_vmx_copy_nums = 1;
				emulated = kvmppc_handle_vmx_store(run,
						vcpu, op.reg, size, 1);
			}

			break;
#endif
#ifdef CONFIG_VSX
		case STORE_VSX: {
			int io_size_each;

			if (op.vsx_flags & VSX_CHECK_VEC) {
				if (kvmppc_check_altivec_disabled(vcpu))
					return EMULATE_DONE;
			} else {
				if (kvmppc_check_vsx_disabled(vcpu))
					return EMULATE_DONE;
			}

			if (vcpu->kvm->arch.kvm_ops->giveup_ext)
				vcpu->kvm->arch.kvm_ops->giveup_ext(vcpu,
						MSR_VSX);

			if (op.vsx_flags & VSX_FPCONV)
				vcpu->arch.mmio_sp64_extend = 1;

			if (op.element_size == 8)
				vcpu->arch.mmio_copy_type =
						KVMPPC_VSX_COPY_DWORD;
			else if (op.element_size == 4)
				vcpu->arch.mmio_copy_type =
						KVMPPC_VSX_COPY_WORD;
			else
				break;

			if (size < op.element_size) {
				/* precise conversion case, like stxsspx */
				vcpu->arch.mmio_vsx_copy_nums = 1;
				io_size_each = size;
			} else { /* stxvw4x, stxvd2x, etc */
				vcpu->arch.mmio_vsx_copy_nums =
						size/op.element_size;
				io_size_each = op.element_size;
			}

			emulated = kvmppc_handle_vsx_store(run, vcpu,
					op.reg, io_size_each, 1);
			break;
		}
#endif
		case CACHEOP:
			/* Do nothing. The guest is performing dcbi because
			 * hardware DMA is not snooped by the dcache, but
			 * emulated DMA either goes through the dcache as
			 * normal writes, or the host kernel has handled dcache
			 * coherence.
			 */
			emulated = EMULATE_DONE;
			break;
		default:
			break;
		}
	}

	if (emulated == EMULATE_FAIL) {
		advance = 0;
		FUNC9(vcpu, 0);
	}

	FUNC25(inst, FUNC11(vcpu), emulated);

	/* Advance past emulated instruction. */
	if (advance)
		FUNC21(vcpu, FUNC11(vcpu) + 4);

	return emulated;
}