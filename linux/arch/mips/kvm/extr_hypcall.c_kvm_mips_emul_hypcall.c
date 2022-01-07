
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int code; } ;
union mips_instruction {TYPE_1__ co_format; } ;
struct TYPE_4__ {int pc; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;


 int EMULATE_FAIL ;
 int EMULATE_HYPERCALL ;
 int kvm_debug (char*,int ,unsigned int) ;

enum emulation_result kvm_mips_emul_hypcall(struct kvm_vcpu *vcpu,
         union mips_instruction inst)
{
 unsigned int code = (inst.co_format.code >> 5) & 0x3ff;

 kvm_debug("[%#lx] HYPCALL %#03x\n", vcpu->arch.pc, code);

 switch (code) {
 case 0:
  return EMULATE_HYPERCALL;
 default:
  return EMULATE_FAIL;
 };
}
