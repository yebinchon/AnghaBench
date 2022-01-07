
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;
struct kvm_memory_slot {int dummy; } ;
typedef int kvm_pfn_t ;
typedef int gva_t ;
typedef int gfn_t ;


 int KVM_PFN_NOSLOT ;
 int KVM_REQ_APF_HALT ;
 int __gfn_to_pfn_memslot (struct kvm_memory_slot*,int ,int,int*,int,int*) ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 scalar_t__ kvm_arch_setup_async_pf (struct kvm_vcpu*,int ,int ) ;
 scalar_t__ kvm_can_do_async_pf (struct kvm_vcpu*) ;
 scalar_t__ kvm_find_async_pf_gfn (struct kvm_vcpu*,int ) ;
 int kvm_is_visible_gfn (int ,int ) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 struct kvm_memory_slot* kvm_vcpu_gfn_to_memslot (struct kvm_vcpu*,int ) ;
 int trace_kvm_async_pf_doublefault (int ,int ) ;
 int trace_kvm_try_async_get_page (int ,int ) ;

__attribute__((used)) static bool try_async_pf(struct kvm_vcpu *vcpu, bool prefault, gfn_t gfn,
    gva_t gva, kvm_pfn_t *pfn, bool write, bool *writable)
{
 struct kvm_memory_slot *slot;
 bool async;




 if (is_guest_mode(vcpu) && !kvm_is_visible_gfn(vcpu->kvm, gfn)) {
  *pfn = KVM_PFN_NOSLOT;
  return 0;
 }

 slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
 async = 0;
 *pfn = __gfn_to_pfn_memslot(slot, gfn, 0, &async, write, writable);
 if (!async)
  return 0;

 if (!prefault && kvm_can_do_async_pf(vcpu)) {
  trace_kvm_try_async_get_page(gva, gfn);
  if (kvm_find_async_pf_gfn(vcpu, gfn)) {
   trace_kvm_async_pf_doublefault(gva, gfn);
   kvm_make_request(KVM_REQ_APF_HALT, vcpu);
   return 1;
  } else if (kvm_arch_setup_async_pf(vcpu, gva, gfn))
   return 1;
 }

 *pfn = __gfn_to_pfn_memslot(slot, gfn, 0, ((void*)0), write, writable);
 return 0;
}
