
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int * gfns; } ;
struct TYPE_4__ {TYPE_1__ apf; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int gfn_t ;


 int ASYNC_PF_PER_VCPU ;
 size_t kvm_async_pf_hash_fn (int ) ;
 size_t kvm_async_pf_next_probe (size_t) ;
 int roundup_pow_of_two (int ) ;

__attribute__((used)) static u32 kvm_async_pf_gfn_slot(struct kvm_vcpu *vcpu, gfn_t gfn)
{
 int i;
 u32 key = kvm_async_pf_hash_fn(gfn);

 for (i = 0; i < roundup_pow_of_two(ASYNC_PF_PER_VCPU) &&
       (vcpu->arch.apf.gfns[key] != gfn &&
        vcpu->arch.apf.gfns[key] != ~0); i++)
  key = kvm_async_pf_next_probe(key);

 return key;
}
