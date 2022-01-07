
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int uint32_t ;
struct TYPE_2__ {int magic_page_pa; scalar_t__ shared; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;
typedef int kvm_pfn_t ;
typedef int gpa_t ;
typedef int gfn_t ;


 int KVM_PAM ;
 int MSR_SF ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int get_page (int ) ;
 int gfn_to_pfn_prot (int ,int,int,int*) ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 int pfn_to_page (int) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ virt_to_phys (void*) ;

kvm_pfn_t kvmppc_gpa_to_pfn(struct kvm_vcpu *vcpu, gpa_t gpa, bool writing,
   bool *writable)
{
 ulong mp_pa = vcpu->arch.magic_page_pa & KVM_PAM;
 gfn_t gfn = gpa >> PAGE_SHIFT;

 if (!(kvmppc_get_msr(vcpu) & MSR_SF))
  mp_pa = (uint32_t)mp_pa;


 gpa &= ~0xFFFULL;
 if (unlikely(mp_pa) && unlikely((gpa & KVM_PAM) == mp_pa)) {
  ulong shared_page = ((ulong)vcpu->arch.shared) & PAGE_MASK;
  kvm_pfn_t pfn;

  pfn = (kvm_pfn_t)virt_to_phys((void*)shared_page) >> PAGE_SHIFT;
  get_page(pfn_to_page(pfn));
  if (writable)
   *writable = 1;
  return pfn;
 }

 return gfn_to_pfn_prot(vcpu->kvm, gfn, writing, writable);
}
