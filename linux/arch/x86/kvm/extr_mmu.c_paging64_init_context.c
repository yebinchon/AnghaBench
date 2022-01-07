
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int dummy; } ;


 int PT64_ROOT_4LEVEL ;
 int PT64_ROOT_5LEVEL ;
 scalar_t__ is_la57_mode (struct kvm_vcpu*) ;
 int paging64_init_context_common (struct kvm_vcpu*,struct kvm_mmu*,int) ;

__attribute__((used)) static void paging64_init_context(struct kvm_vcpu *vcpu,
      struct kvm_mmu *context)
{
 int root_level = is_la57_mode(vcpu) ?
    PT64_ROOT_5LEVEL : PT64_ROOT_4LEVEL;

 paging64_init_context_common(vcpu, context, root_level);
}
