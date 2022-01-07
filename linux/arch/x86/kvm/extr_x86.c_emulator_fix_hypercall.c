
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ctxt {int exception; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* patch_hypercall ) (struct kvm_vcpu*,char*) ;} ;


 struct kvm_vcpu* emul_to_vcpu (struct x86_emulate_ctxt*) ;
 int emulator_write_emulated (struct x86_emulate_ctxt*,unsigned long,char*,int,int *) ;
 unsigned long kvm_rip_read (struct kvm_vcpu*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,char*) ;

__attribute__((used)) static int emulator_fix_hypercall(struct x86_emulate_ctxt *ctxt)
{
 struct kvm_vcpu *vcpu = emul_to_vcpu(ctxt);
 char instruction[3];
 unsigned long rip = kvm_rip_read(vcpu);

 kvm_x86_ops->patch_hypercall(vcpu, instruction);

 return emulator_write_emulated(ctxt, rip, instruction, 3,
  &ctxt->exception);
}
