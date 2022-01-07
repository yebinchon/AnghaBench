
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct x86_emulate_ctxt {int dummy; } ;
struct TYPE_2__ {int smbase; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 struct kvm_vcpu* emul_to_vcpu (struct x86_emulate_ctxt*) ;

__attribute__((used)) static u64 emulator_get_smbase(struct x86_emulate_ctxt *ctxt)
{
 struct kvm_vcpu *vcpu = emul_to_vcpu(ctxt);

 return vcpu->arch.smbase;
}
