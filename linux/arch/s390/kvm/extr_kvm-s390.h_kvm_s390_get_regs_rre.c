
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int ipb; } ;



__attribute__((used)) static inline void kvm_s390_get_regs_rre(struct kvm_vcpu *vcpu, int *r1, int *r2)
{
 if (r1)
  *r1 = (vcpu->arch.sie_block->ipb & 0x00f00000) >> 20;
 if (r2)
  *r2 = (vcpu->arch.sie_block->ipb & 0x000f0000) >> 16;
}
