
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int func; } ;
struct TYPE_4__ {int opcode; } ;
union mips_instruction {int word; TYPE_2__ spec3_format; TYPE_1__ r_format; } ;
typedef int u32 ;
struct TYPE_6__ {int cache_exits; } ;
struct kvm_vcpu {TYPE_3__ stat; } ;
struct kvm_run {int dummy; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;


 int CAUSEF_BD ;
 int EMULATE_DONE ;
 int EMULATE_FAIL ;
 int KVM_TRACE_EXIT_CACHE ;



 int kvm_arch_vcpu_dump_regs (struct kvm_vcpu*) ;
 int kvm_err (char*,int*,int ) ;
 int kvm_get_badinstr (int*,struct kvm_vcpu*,int *) ;
 int kvm_mips_emulate_CP0 (union mips_instruction,int*,int,struct kvm_run*,struct kvm_vcpu*) ;
 int kvm_mips_emulate_cache (union mips_instruction,int*,int,struct kvm_run*,struct kvm_vcpu*) ;

 int trace_kvm_exit (struct kvm_vcpu*,int ) ;

enum emulation_result kvm_mips_emulate_inst(u32 cause, u32 *opc,
         struct kvm_run *run,
         struct kvm_vcpu *vcpu)
{
 union mips_instruction inst;
 enum emulation_result er = EMULATE_DONE;
 int err;


 if (cause & CAUSEF_BD)
  opc += 1;
 err = kvm_get_badinstr(opc, vcpu, &inst.word);
 if (err)
  return EMULATE_FAIL;

 switch (inst.r_format.opcode) {
 case 129:
  er = kvm_mips_emulate_CP0(inst, opc, cause, run, vcpu);
  break;


 case 130:
  ++vcpu->stat.cache_exits;
  trace_kvm_exit(vcpu, KVM_TRACE_EXIT_CACHE);
  er = kvm_mips_emulate_cache(inst, opc, cause, run, vcpu);
  break;
 default:
  kvm_err("Instruction emulation not supported (%p/%#x)\n", opc,
   inst.word);
  kvm_arch_vcpu_dump_regs(vcpu);
  er = EMULATE_FAIL;
  break;
 }

 return er;
}
