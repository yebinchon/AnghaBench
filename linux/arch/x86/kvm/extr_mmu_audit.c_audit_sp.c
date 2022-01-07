
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_page {int dummy; } ;
struct kvm {int dummy; } ;


 int audit_write_protection (struct kvm*,struct kvm_mmu_page*) ;
 int check_mappings_rmap (struct kvm*,struct kvm_mmu_page*) ;

__attribute__((used)) static void audit_sp(struct kvm *kvm, struct kvm_mmu_page *sp)
{
 check_mappings_rmap(kvm, sp);
 audit_write_protection(kvm, sp);
}
