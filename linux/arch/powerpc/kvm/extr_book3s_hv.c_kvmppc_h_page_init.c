
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct kvm_vcpu {int kvm; } ;


 unsigned long H_COPY_PAGE ;
 unsigned long H_ICACHE_INVALIDATE ;
 unsigned long H_ICACHE_SYNCHRONIZE ;
 unsigned long H_PAGE_SET_LOANED ;
 long H_PARAMETER ;
 long H_SUCCESS ;
 unsigned long H_ZERO_PAGE ;
 unsigned long SZ_4K ;
 int kvm_clear_guest (int ,unsigned long,unsigned long) ;
 int kvmppc_copy_guest (int ,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static long kvmppc_h_page_init(struct kvm_vcpu *vcpu, unsigned long flags,
          unsigned long dest, unsigned long src)
{
 u64 pg_sz = SZ_4K;
 u64 pg_mask = SZ_4K - 1;
 int ret;


 if (flags & ~(H_ICACHE_INVALIDATE | H_ICACHE_SYNCHRONIZE |
        H_ZERO_PAGE | H_COPY_PAGE | H_PAGE_SET_LOANED))
  return H_PARAMETER;


 if ((dest & pg_mask) || ((flags & H_COPY_PAGE) && (src & pg_mask)))
  return H_PARAMETER;


 if (flags & H_COPY_PAGE) {
  ret = kvmppc_copy_guest(vcpu->kvm, dest, src, pg_sz);
  if (ret < 0)
   return H_PARAMETER;
 } else if (flags & H_ZERO_PAGE) {
  ret = kvm_clear_guest(vcpu->kvm, dest, pg_sz);
  if (ret < 0)
   return H_PARAMETER;
 }



 return H_SUCCESS;
}
