
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;
typedef scalar_t__ s64 ;
struct TYPE_3__ {scalar_t__ ckc; int* gcr; } ;


 int CR0_CLOCK_COMPARATOR_SIGN ;
 int ckc_interrupts_enabled (struct kvm_vcpu*) ;
 scalar_t__ kvm_s390_get_tod_clock_fast (int ) ;

__attribute__((used)) static int ckc_irq_pending(struct kvm_vcpu *vcpu)
{
 const u64 now = kvm_s390_get_tod_clock_fast(vcpu->kvm);
 const u64 ckc = vcpu->arch.sie_block->ckc;

 if (vcpu->arch.sie_block->gcr[0] & CR0_CLOCK_COMPARATOR_SIGN) {
  if ((s64)ckc >= (s64)now)
   return 0;
 } else if (ckc >= now) {
  return 0;
 }
 return ckc_interrupts_enabled(vcpu);
}
