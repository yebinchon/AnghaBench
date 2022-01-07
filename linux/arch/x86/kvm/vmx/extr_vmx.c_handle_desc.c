
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cr4; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int WARN_ON (int) ;
 int X86_CR4_UMIP ;
 int kvm_emulate_instruction (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int handle_desc(struct kvm_vcpu *vcpu)
{
 WARN_ON(!(vcpu->arch.cr4 & X86_CR4_UMIP));
 return kvm_emulate_instruction(vcpu, 0);
}
