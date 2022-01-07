
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int ioapic_in_kernel (struct kvm*) ;
 int kvm_make_scan_ioapic_request (struct kvm*) ;

void kvm_arch_post_irq_ack_notifier_list_update(struct kvm *kvm)
{
 if (!ioapic_in_kernel(kvm))
  return;
 kvm_make_scan_ioapic_request(kvm);
}
