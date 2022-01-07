
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sie_block; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {unsigned long mask; } ;
struct TYPE_5__ {TYPE_1__ gpsw; } ;



__attribute__((used)) static inline void kvm_s390_set_psw_cc(struct kvm_vcpu *vcpu, unsigned long cc)
{
 vcpu->arch.sie_block->gpsw.mask &= ~(3UL << 44);
 vcpu->arch.sie_block->gpsw.mask |= cc << 44;
}
