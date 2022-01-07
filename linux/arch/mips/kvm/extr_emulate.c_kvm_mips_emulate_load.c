
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rt; int opcode; } ;
union mips_instruction {int word; TYPE_1__ i_format; } ;
typedef int u32 ;
struct TYPE_6__ {unsigned long pc; unsigned long io_pc; int io_gpr; int host_cp0_badvaddr; } ;
struct kvm_vcpu {int mmio_needed; scalar_t__ mmio_is_write; TYPE_2__ arch; } ;
struct TYPE_7__ {scalar_t__ phys_addr; int len; scalar_t__ is_write; } ;
struct kvm_run {TYPE_3__ mmio; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;
struct TYPE_8__ {scalar_t__ (* gva_to_gpa ) (int ) ;} ;


 int EMULATE_DO_MMIO ;
 int EMULATE_FAIL ;
 scalar_t__ KVM_INVALID_ADDR ;
 int kvm_err (char*,int ) ;
 TYPE_4__* kvm_mips_callbacks ;







 scalar_t__ stub1 (int ) ;
 int update_pc (struct kvm_vcpu*,int) ;

enum emulation_result kvm_mips_emulate_load(union mips_instruction inst,
         u32 cause, struct kvm_run *run,
         struct kvm_vcpu *vcpu)
{
 enum emulation_result er;
 unsigned long curr_pc;
 u32 op, rt;

 rt = inst.i_format.rt;
 op = inst.i_format.opcode;






 curr_pc = vcpu->arch.pc;
 er = update_pc(vcpu, cause);
 if (er == EMULATE_FAIL)
  return er;
 vcpu->arch.io_pc = vcpu->arch.pc;
 vcpu->arch.pc = curr_pc;

 vcpu->arch.io_gpr = rt;

 run->mmio.phys_addr = kvm_mips_callbacks->gva_to_gpa(
      vcpu->arch.host_cp0_badvaddr);
 if (run->mmio.phys_addr == KVM_INVALID_ADDR)
  return EMULATE_FAIL;

 vcpu->mmio_needed = 2;
 switch (op) {
 case 129:
  run->mmio.len = 4;
  break;

 case 130:
  vcpu->mmio_needed = 1;

 case 131:
  run->mmio.len = 2;
  break;

 case 133:
  vcpu->mmio_needed = 1;

 case 134:
  run->mmio.len = 1;
  break;

 default:
  kvm_err("Load not yet supported (inst=0x%08x)\n",
   inst.word);
  vcpu->mmio_needed = 0;
  return EMULATE_FAIL;
 }

 run->mmio.is_write = 0;
 vcpu->mmio_is_write = 0;
 return EMULATE_DO_MMIO;
}
