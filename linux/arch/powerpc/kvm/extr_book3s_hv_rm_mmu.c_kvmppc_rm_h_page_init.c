
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm {int dummy; } ;


 unsigned long H_COPY_PAGE ;
 unsigned long H_ICACHE_INVALIDATE ;
 unsigned long H_ICACHE_SYNCHRONIZE ;
 unsigned long H_PAGE_SET_LOANED ;
 long H_PARAMETER ;
 long H_SUCCESS ;
 long H_TOO_HARD ;
 unsigned long H_ZERO_PAGE ;
 unsigned long SZ_4K ;
 scalar_t__ kvm_is_radix (struct kvm*) ;
 long kvmppc_do_h_page_init_copy (struct kvm_vcpu*,unsigned long,unsigned long) ;
 long kvmppc_do_h_page_init_zero (struct kvm_vcpu*,unsigned long) ;

long kvmppc_rm_h_page_init(struct kvm_vcpu *vcpu, unsigned long flags,
      unsigned long dest, unsigned long src)
{
 struct kvm *kvm = vcpu->kvm;
 u64 pg_mask = SZ_4K - 1;
 long ret = H_SUCCESS;


 if (kvm_is_radix(kvm))
  return H_TOO_HARD;


 if (flags & ~(H_ICACHE_INVALIDATE | H_ICACHE_SYNCHRONIZE |
        H_ZERO_PAGE | H_COPY_PAGE | H_PAGE_SET_LOANED))
  return H_PARAMETER;


 if ((dest & pg_mask) || ((flags & H_COPY_PAGE) && (src & pg_mask)))
  return H_PARAMETER;


 if (flags & H_COPY_PAGE)
  ret = kvmppc_do_h_page_init_copy(vcpu, dest, src);
 else if (flags & H_ZERO_PAGE)
  ret = kvmppc_do_h_page_init_zero(vcpu, dest);



 return ret;
}
