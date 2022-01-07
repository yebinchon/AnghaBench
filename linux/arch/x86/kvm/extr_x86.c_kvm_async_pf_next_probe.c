
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ASYNC_PF_PER_VCPU ;
 int roundup_pow_of_two (int ) ;

__attribute__((used)) static inline u32 kvm_async_pf_next_probe(u32 key)
{
 return (key + 1) & (roundup_pow_of_two(ASYNC_PF_PER_VCPU) - 1);
}
