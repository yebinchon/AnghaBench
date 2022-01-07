
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sint; int vcpu; } ;
struct kvm_kernel_irq_routing_entry {TYPE_1__ hv_sint; } ;
struct kvm {int dummy; } ;


 int kvm_hv_synic_set_irq (struct kvm*,int ,int ) ;

__attribute__((used)) static int kvm_hv_set_sint(struct kvm_kernel_irq_routing_entry *e,
      struct kvm *kvm, int irq_source_id, int level,
      bool line_status)
{
 if (!level)
  return -1;

 return kvm_hv_synic_set_irq(kvm, e->hv_sint.vcpu, e->hv_sint.sint);
}
