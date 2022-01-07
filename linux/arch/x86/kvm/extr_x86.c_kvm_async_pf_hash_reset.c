
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * gfns; } ;
struct TYPE_4__ {TYPE_1__ apf; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int ASYNC_PF_PER_VCPU ;
 int roundup_pow_of_two (int ) ;

__attribute__((used)) static inline void kvm_async_pf_hash_reset(struct kvm_vcpu *vcpu)
{
 int i;
 for (i = 0; i < roundup_pow_of_two(ASYNC_PF_PER_VCPU); i++)
  vcpu->arch.apf.gfns[i] = ~0;
}
