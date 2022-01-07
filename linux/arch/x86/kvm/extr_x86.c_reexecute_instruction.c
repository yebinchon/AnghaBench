
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_4__* kvm; TYPE_2__ arch; } ;
typedef int kvm_pfn_t ;
typedef scalar_t__ gva_t ;
typedef scalar_t__ gpa_t ;
struct TYPE_8__ {unsigned int indirect_shadow_pages; } ;
struct TYPE_9__ {int mmu_lock; TYPE_3__ arch; } ;
struct TYPE_6__ {scalar_t__ direct_map; } ;


 int EMULTYPE_ALLOW_RETRY ;
 scalar_t__ UNMAPPED_GVA ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int gfn_to_pfn (TYPE_4__*,int ) ;
 int gpa_to_gfn (scalar_t__) ;
 scalar_t__ is_error_noslot_pfn (int ) ;
 int is_guest_mode (struct kvm_vcpu*) ;
 scalar_t__ kvm_mmu_gva_to_gpa_write (struct kvm_vcpu*,scalar_t__,int *) ;
 int kvm_mmu_unprotect_page (TYPE_4__*,int ) ;
 int kvm_release_pfn_clean (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool reexecute_instruction(struct kvm_vcpu *vcpu, gva_t cr2,
      bool write_fault_to_shadow_pgtable,
      int emulation_type)
{
 gpa_t gpa = cr2;
 kvm_pfn_t pfn;

 if (!(emulation_type & EMULTYPE_ALLOW_RETRY))
  return 0;

 if (WARN_ON_ONCE(is_guest_mode(vcpu)))
  return 0;

 if (!vcpu->arch.mmu->direct_map) {




  gpa = kvm_mmu_gva_to_gpa_write(vcpu, cr2, ((void*)0));





  if (gpa == UNMAPPED_GVA)
   return 1;
 }







 pfn = gfn_to_pfn(vcpu->kvm, gpa_to_gfn(gpa));





 if (is_error_noslot_pfn(pfn))
  return 0;

 kvm_release_pfn_clean(pfn);


 if (vcpu->arch.mmu->direct_map) {
  unsigned int indirect_shadow_pages;

  spin_lock(&vcpu->kvm->mmu_lock);
  indirect_shadow_pages = vcpu->kvm->arch.indirect_shadow_pages;
  spin_unlock(&vcpu->kvm->mmu_lock);

  if (indirect_shadow_pages)
   kvm_mmu_unprotect_page(vcpu->kvm, gpa_to_gfn(gpa));

  return 1;
 }






 kvm_mmu_unprotect_page(vcpu->kvm, gpa_to_gfn(gpa));






 return !write_fault_to_shadow_pgtable;
}
