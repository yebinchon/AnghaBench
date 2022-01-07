
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {int msr; } ;
struct TYPE_11__ {int mmio_vsx_copy_nums; int mmio_sp64_extend; int mmio_vmx_copy_nums; int mmio_vmx_offset; unsigned long vaddr_accessed; unsigned long paddr_accessed; void* mmio_copy_type; TYPE_6__ regs; TYPE_1__* shared; scalar_t__ mmio_host_swabbed; scalar_t__ mmio_sign_extend; scalar_t__ mmio_vsx_offset; } ;
struct kvm_vcpu {TYPE_5__ arch; TYPE_4__* kvm; struct kvm_run* run; } ;
struct kvm_run {int dummy; } ;
struct instruction_op {int type; int reg; int vsx_flags; int element_size; int ea; int update_reg; int val; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;
struct TYPE_9__ {TYPE_2__* kvm_ops; } ;
struct TYPE_10__ {TYPE_3__ arch; } ;
struct TYPE_8__ {int (* giveup_ext ) (struct kvm_vcpu*,int ) ;} ;
struct TYPE_7__ {int msr; } ;


 int BYTEREV ;

 int EMULATED_INST_EXITS ;
 int EMULATE_DONE ;
 int EMULATE_FAIL ;
 int FPCONV ;
 int GETSIZE (int) ;
 int INSTR_TYPE_MASK ;
 int INST_GENERIC ;
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




 int MSR_FP ;
 int MSR_VEC ;
 int MSR_VSX ;
 int SIGNEXT ;




 int UPDATE ;
 int VCPU_FPR (struct kvm_vcpu*,int) ;
 int VSX_CHECK_VEC ;
 int VSX_FPCONV ;
 int VSX_SPLAT ;
 scalar_t__ analyse_instr (struct instruction_op*,TYPE_6__*,int ) ;
 int get_ra (int ) ;
 int get_rs (int ) ;
 int get_rt (int ) ;
 int kvmppc_check_altivec_disabled (struct kvm_vcpu*) ;
 int kvmppc_check_fp_disabled (struct kvm_vcpu*) ;
 int kvmppc_check_vsx_disabled (struct kvm_vcpu*) ;
 int kvmppc_core_queue_program (struct kvm_vcpu*,int ) ;
 int kvmppc_get_last_inst (struct kvm_vcpu*,int ,int *) ;
 scalar_t__ kvmppc_get_pc (struct kvm_vcpu*) ;
 int kvmppc_handle_load (struct kvm_run*,struct kvm_vcpu*,int,int,int) ;
 int kvmppc_handle_loads (struct kvm_run*,struct kvm_vcpu*,int,int,int) ;
 int kvmppc_handle_store (struct kvm_run*,struct kvm_vcpu*,int ,int,int) ;
 int kvmppc_handle_vmx_load (struct kvm_run*,struct kvm_vcpu*,int,int,int) ;
 int kvmppc_handle_vmx_store (struct kvm_run*,struct kvm_vcpu*,int,int,int) ;
 int kvmppc_handle_vsx_load (struct kvm_run*,struct kvm_vcpu*,int,int,int,int) ;
 int kvmppc_handle_vsx_store (struct kvm_run*,struct kvm_vcpu*,int,int,int) ;
 int kvmppc_set_exit_type (struct kvm_vcpu*,int ) ;
 int kvmppc_set_gpr (struct kvm_vcpu*,int ,int ) ;
 int kvmppc_set_pc (struct kvm_vcpu*,scalar_t__) ;
 int stub1 (struct kvm_vcpu*,int ) ;
 int stub2 (struct kvm_vcpu*,int ) ;
 int stub3 (struct kvm_vcpu*,int ) ;
 int trace_kvm_ppc_instr (int ,scalar_t__,int) ;

int kvmppc_emulate_loadstore(struct kvm_vcpu *vcpu)
{
 struct kvm_run *run = vcpu->run;
 u32 inst;
 int ra, rs, rt;
 enum emulation_result emulated = EMULATE_FAIL;
 int advance = 1;
 struct instruction_op op;


 kvmppc_set_exit_type(vcpu, EMULATED_INST_EXITS);

 emulated = kvmppc_get_last_inst(vcpu, INST_GENERIC, &inst);
 if (emulated != EMULATE_DONE)
  return emulated;

 ra = get_ra(inst);
 rs = get_rs(inst);
 rt = get_rt(inst);

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
 if (analyse_instr(&op, &vcpu->arch.regs, inst) == 0) {
  int type = op.type & INSTR_TYPE_MASK;
  int size = GETSIZE(op.type);

  switch (type) {
  case 135: {
   int instr_byte_swap = op.type & BYTEREV;

   if (op.type & SIGNEXT)
    emulated = kvmppc_handle_loads(run, vcpu,
      op.reg, size, !instr_byte_swap);
   else
    emulated = kvmppc_handle_load(run, vcpu,
      op.reg, size, !instr_byte_swap);

   if ((op.type & UPDATE) && (emulated != EMULATE_FAIL))
    kvmppc_set_gpr(vcpu, op.update_reg, op.ea);

   break;
  }
  case 131:



   emulated = kvmppc_handle_store(run, vcpu, op.val,
     size, 1);

   if ((op.type & UPDATE) && (emulated != EMULATE_FAIL))
    kvmppc_set_gpr(vcpu, op.update_reg, op.ea);

   break;
  case 136:






   emulated = EMULATE_DONE;
   break;
  default:
   break;
  }
 }

 if (emulated == EMULATE_FAIL) {
  advance = 0;
  kvmppc_core_queue_program(vcpu, 0);
 }

 trace_kvm_ppc_instr(inst, kvmppc_get_pc(vcpu), emulated);


 if (advance)
  kvmppc_set_pc(vcpu, kvmppc_get_pc(vcpu) + 4);

 return emulated;
}
