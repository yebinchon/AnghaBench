
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {unsigned long pending_exceptions; unsigned long pending_exceptions_clr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {scalar_t__ (* irq_deliver ) (struct kvm_vcpu*,unsigned int,int ) ;scalar_t__ (* irq_clear ) (struct kvm_vcpu*,unsigned int,int ) ;} ;


 int BITS_PER_BYTE ;
 int KVM_MIPS_IRQ_CLEAR_ALL_AT_ONCE ;
 int KVM_MIPS_IRQ_DELIVER_ALL_AT_ONCE ;
 unsigned int MIPS_EXC_MAX ;
 unsigned int __ffs (unsigned long) ;
 unsigned int find_next_bit (unsigned long*,int,unsigned int) ;
 TYPE_2__* kvm_mips_callbacks ;
 scalar_t__ stub1 (struct kvm_vcpu*,unsigned int,int ) ;
 scalar_t__ stub2 (struct kvm_vcpu*,unsigned int,int ) ;

void kvm_mips_deliver_interrupts(struct kvm_vcpu *vcpu, u32 cause)
{
 unsigned long *pending = &vcpu->arch.pending_exceptions;
 unsigned long *pending_clr = &vcpu->arch.pending_exceptions_clr;
 unsigned int priority;

 if (!(*pending) && !(*pending_clr))
  return;

 priority = __ffs(*pending_clr);
 while (priority <= MIPS_EXC_MAX) {
  if (kvm_mips_callbacks->irq_clear(vcpu, priority, cause)) {
   if (!KVM_MIPS_IRQ_CLEAR_ALL_AT_ONCE)
    break;
  }

  priority = find_next_bit(pending_clr,
      BITS_PER_BYTE * sizeof(*pending_clr),
      priority + 1);
 }

 priority = __ffs(*pending);
 while (priority <= MIPS_EXC_MAX) {
  if (kvm_mips_callbacks->irq_deliver(vcpu, priority, cause)) {
   if (!KVM_MIPS_IRQ_DELIVER_ALL_AT_ONCE)
    break;
  }

  priority = find_next_bit(pending,
      BITS_PER_BYTE * sizeof(*pending),
      priority + 1);
 }

}
