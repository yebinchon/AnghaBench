
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int APIC_DEFAULT_PHYS_BASE ;
 int KVM_REQ_APIC_PAGE_RELOAD ;
 int PAGE_SHIFT ;
 unsigned long gfn_to_hva (struct kvm*,int) ;
 int kvm_make_all_cpus_request (struct kvm*,int ) ;

int kvm_arch_mmu_notifier_invalidate_range(struct kvm *kvm,
  unsigned long start, unsigned long end,
  bool blockable)
{
 unsigned long apic_address;





 apic_address = gfn_to_hva(kvm, APIC_DEFAULT_PHYS_BASE >> PAGE_SHIFT);
 if (start <= apic_address && apic_address < end)
  kvm_make_all_cpus_request(kvm, KVM_REQ_APIC_PAGE_RELOAD);

 return 0;
}
