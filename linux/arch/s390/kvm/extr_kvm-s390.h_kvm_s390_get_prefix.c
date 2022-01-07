
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int prefix; } ;


 int GUEST_PREFIX_SHIFT ;

__attribute__((used)) static inline u32 kvm_s390_get_prefix(struct kvm_vcpu *vcpu)
{
 return vcpu->arch.sie_block->prefix << GUEST_PREFIX_SHIFT;
}
