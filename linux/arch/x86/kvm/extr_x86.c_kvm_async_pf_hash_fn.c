
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int gfn_t ;


 int ASYNC_PF_PER_VCPU ;
 int hash_32 (int,int ) ;
 int order_base_2 (int ) ;

__attribute__((used)) static inline u32 kvm_async_pf_hash_fn(gfn_t gfn)
{
 return hash_32(gfn & 0xffffffff, order_base_2(ASYNC_PF_PER_VCPU));
}
