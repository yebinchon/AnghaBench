
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;
typedef int gva_t ;
typedef int gpa_t ;
struct TYPE_3__ {scalar_t__ direct_map; } ;


 int PAGE_SHIFT ;
 int kvm_mmu_gva_to_gpa_read (struct kvm_vcpu*,int ,int *) ;
 int kvm_mmu_unprotect_page (int ,int) ;

int kvm_mmu_unprotect_page_virt(struct kvm_vcpu *vcpu, gva_t gva)
{
 gpa_t gpa;
 int r;

 if (vcpu->arch.mmu->direct_map)
  return 0;

 gpa = kvm_mmu_gva_to_gpa_read(vcpu, gva, ((void*)0));

 r = kvm_mmu_unprotect_page(vcpu->kvm, gpa >> PAGE_SHIFT);

 return r;
}
