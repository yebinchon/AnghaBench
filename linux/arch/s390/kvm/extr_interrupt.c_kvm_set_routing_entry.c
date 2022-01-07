
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int adapter_id; int ind_offset; int summary_offset; int ind_addr; int summary_addr; } ;
struct kvm_kernel_irq_routing_entry {TYPE_1__ adapter; int set; } ;
struct TYPE_5__ {int adapter_id; int ind_offset; int summary_offset; int ind_addr; int summary_addr; } ;
struct TYPE_6__ {TYPE_2__ adapter; } ;
struct kvm_irq_routing_entry {int type; TYPE_3__ u; } ;
struct kvm {int dummy; } ;


 int EINVAL ;

 int set_adapter_int ;

int kvm_set_routing_entry(struct kvm *kvm,
     struct kvm_kernel_irq_routing_entry *e,
     const struct kvm_irq_routing_entry *ue)
{
 int ret;

 switch (ue->type) {
 case 128:
  e->set = set_adapter_int;
  e->adapter.summary_addr = ue->u.adapter.summary_addr;
  e->adapter.ind_addr = ue->u.adapter.ind_addr;
  e->adapter.summary_offset = ue->u.adapter.summary_offset;
  e->adapter.ind_offset = ue->u.adapter.ind_offset;
  e->adapter.adapter_id = ue->u.adapter.adapter_id;
  ret = 0;
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
