
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t rt; int opcode; } ;
union mips_instruction {int word; TYPE_1__ i_format; } ;
typedef size_t u8 ;
typedef size_t u64 ;
typedef size_t u32 ;
typedef size_t u16 ;
struct TYPE_7__ {unsigned long pc; size_t* gprs; int host_cp0_badvaddr; } ;
struct kvm_vcpu {int mmio_needed; int mmio_is_write; TYPE_3__ arch; } ;
struct TYPE_6__ {scalar_t__ phys_addr; int len; int is_write; void* data; } ;
struct kvm_run {TYPE_2__ mmio; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;
struct TYPE_8__ {scalar_t__ (* gva_to_gpa ) (int ) ;} ;


 int EMULATE_DO_MMIO ;
 int EMULATE_FAIL ;
 scalar_t__ KVM_INVALID_ADDR ;
 int kvm_debug (char*,unsigned long,int ,size_t,size_t) ;
 int kvm_err (char*,int ) ;
 TYPE_4__* kvm_mips_callbacks ;



 scalar_t__ stub1 (int ) ;

 int update_pc (struct kvm_vcpu*,size_t) ;

enum emulation_result kvm_mips_emulate_store(union mips_instruction inst,
          u32 cause,
          struct kvm_run *run,
          struct kvm_vcpu *vcpu)
{
 enum emulation_result er;
 u32 rt;
 void *data = run->mmio.data;
 unsigned long curr_pc;





 curr_pc = vcpu->arch.pc;
 er = update_pc(vcpu, cause);
 if (er == EMULATE_FAIL)
  return er;

 rt = inst.i_format.rt;

 run->mmio.phys_addr = kvm_mips_callbacks->gva_to_gpa(
      vcpu->arch.host_cp0_badvaddr);
 if (run->mmio.phys_addr == KVM_INVALID_ADDR)
  goto out_fail;

 switch (inst.i_format.opcode) {
 case 128:
  run->mmio.len = 4;
  *(u32 *)data = vcpu->arch.gprs[rt];

  kvm_debug("[%#lx] OP_SW: eaddr: %#lx, gpr: %#lx, data: %#x\n",
     vcpu->arch.pc, vcpu->arch.host_cp0_badvaddr,
     vcpu->arch.gprs[rt], *(u32 *)data);
  break;

 case 129:
  run->mmio.len = 2;
  *(u16 *)data = vcpu->arch.gprs[rt];

  kvm_debug("[%#lx] OP_SH: eaddr: %#lx, gpr: %#lx, data: %#x\n",
     vcpu->arch.pc, vcpu->arch.host_cp0_badvaddr,
     vcpu->arch.gprs[rt], *(u16 *)data);
  break;

 case 131:
  run->mmio.len = 1;
  *(u8 *)data = vcpu->arch.gprs[rt];

  kvm_debug("[%#lx] OP_SB: eaddr: %#lx, gpr: %#lx, data: %#x\n",
     vcpu->arch.pc, vcpu->arch.host_cp0_badvaddr,
     vcpu->arch.gprs[rt], *(u8 *)data);
  break;

 default:
  kvm_err("Store not yet supported (inst=0x%08x)\n",
   inst.word);
  goto out_fail;
 }

 run->mmio.is_write = 1;
 vcpu->mmio_needed = 1;
 vcpu->mmio_is_write = 1;
 return EMULATE_DO_MMIO;

out_fail:

 vcpu->arch.pc = curr_pc;
 return EMULATE_FAIL;
}
