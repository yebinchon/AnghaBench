
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hflags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int HF_GUEST_MASK ;

__attribute__((used)) static inline void enter_guest_mode(struct kvm_vcpu *vcpu)
{
 vcpu->arch.hflags |= HF_GUEST_MASK;
}
