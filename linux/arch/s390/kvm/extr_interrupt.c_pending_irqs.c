
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* kvm; } ;
struct kvm_s390_gisa_interrupt {scalar_t__ origin; } ;
struct TYPE_3__ {struct kvm_s390_gisa_interrupt gisa_int; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 unsigned long IRQ_PEND_IO_ISC_7 ;
 unsigned long gisa_get_ipm (scalar_t__) ;
 unsigned long pending_irqs_no_gisa (struct kvm_vcpu*) ;

__attribute__((used)) static inline unsigned long pending_irqs(struct kvm_vcpu *vcpu)
{
 struct kvm_s390_gisa_interrupt *gi = &vcpu->kvm->arch.gisa_int;
 unsigned long pending_mask;

 pending_mask = pending_irqs_no_gisa(vcpu);
 if (gi->origin)
  pending_mask |= gisa_get_ipm(gi->origin) << IRQ_PEND_IO_ISC_7;
 return pending_mask;
}
