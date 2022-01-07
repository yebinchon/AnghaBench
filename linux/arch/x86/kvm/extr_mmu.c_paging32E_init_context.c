
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int dummy; } ;


 int PT32E_ROOT_LEVEL ;
 int paging64_init_context_common (struct kvm_vcpu*,struct kvm_mmu*,int ) ;

__attribute__((used)) static void paging32E_init_context(struct kvm_vcpu *vcpu,
       struct kvm_mmu *context)
{
 paging64_init_context_common(vcpu, context, PT32E_ROOT_LEVEL);
}
