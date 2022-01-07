
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_irq_level {int level; int irq; int status; } ;
struct kvm {int dummy; } ;


 int ENXIO ;
 int KVM_USERSPACE_IRQ_SOURCE_ID ;
 int irqchip_in_kernel (struct kvm*) ;
 int kvm_set_irq (struct kvm*,int ,int ,int ,int) ;

int kvm_vm_ioctl_irq_line(struct kvm *kvm, struct kvm_irq_level *irq_event,
     bool line_status)
{
 if (!irqchip_in_kernel(kvm))
  return -ENXIO;

 irq_event->status = kvm_set_irq(kvm, KVM_USERSPACE_IRQ_SOURCE_ID,
     irq_event->irq, irq_event->level,
     line_status);
 return 0;
}
