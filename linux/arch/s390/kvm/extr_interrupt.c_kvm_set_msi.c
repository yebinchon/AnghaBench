
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_kernel_irq_routing_entry {int dummy; } ;
struct kvm {int dummy; } ;


 int EINVAL ;

int kvm_set_msi(struct kvm_kernel_irq_routing_entry *e, struct kvm *kvm,
  int irq_source_id, int level, bool line_status)
{
 return -EINVAL;
}
