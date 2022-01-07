
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_mmu_page {int dummy; } ;


 int WARN_ON (int) ;

__attribute__((used)) static void nonpaging_update_pte(struct kvm_vcpu *vcpu,
     struct kvm_mmu_page *sp, u64 *spte,
     const void *pte)
{
 WARN_ON(1);
}
