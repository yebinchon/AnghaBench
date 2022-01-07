
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union kvm_mmu_page_role {scalar_t__ word; } ;
typedef size_t uint ;
struct TYPE_4__ {struct kvm_mmu* mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mmu_root_info {scalar_t__ cr3; int hpa; } ;
struct kvm_mmu {scalar_t__ root_cr3; int root_hpa; int * prev_roots; } ;
typedef scalar_t__ gpa_t ;
struct TYPE_5__ {scalar_t__ word; } ;
struct TYPE_6__ {TYPE_2__ role; } ;


 size_t KVM_MMU_NUM_PREV_ROOTS ;
 scalar_t__ VALID_PAGE (int ) ;
 TYPE_3__* page_header (int ) ;
 int swap (struct kvm_mmu_root_info,int ) ;

__attribute__((used)) static bool cached_root_available(struct kvm_vcpu *vcpu, gpa_t new_cr3,
      union kvm_mmu_page_role new_role)
{
 uint i;
 struct kvm_mmu_root_info root;
 struct kvm_mmu *mmu = vcpu->arch.mmu;

 root.cr3 = mmu->root_cr3;
 root.hpa = mmu->root_hpa;

 for (i = 0; i < KVM_MMU_NUM_PREV_ROOTS; i++) {
  swap(root, mmu->prev_roots[i]);

  if (new_cr3 == root.cr3 && VALID_PAGE(root.hpa) &&
      page_header(root.hpa) != ((void*)0) &&
      new_role.word == page_header(root.hpa)->role.word)
   break;
 }

 mmu->root_hpa = root.hpa;
 mmu->root_cr3 = root.cr3;

 return i < KVM_MMU_NUM_PREV_ROOTS;
}
