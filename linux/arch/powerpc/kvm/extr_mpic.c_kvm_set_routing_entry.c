
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int data; int address_hi; int address_lo; } ;
struct TYPE_7__ {int pin; int irqchip; } ;
struct kvm_kernel_irq_routing_entry {TYPE_3__ msi; int set; TYPE_2__ irqchip; } ;
struct TYPE_9__ {int data; int address_hi; int address_lo; } ;
struct TYPE_6__ {int pin; int irqchip; } ;
struct TYPE_10__ {TYPE_4__ msi; TYPE_1__ irqchip; } ;
struct kvm_irq_routing_entry {int type; TYPE_5__ u; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 int KVM_IRQCHIP_NUM_PINS ;


 int kvm_set_msi ;
 int mpic_set_irq ;

int kvm_set_routing_entry(struct kvm *kvm,
     struct kvm_kernel_irq_routing_entry *e,
     const struct kvm_irq_routing_entry *ue)
{
 int r = -EINVAL;

 switch (ue->type) {
 case 129:
  e->set = mpic_set_irq;
  e->irqchip.irqchip = ue->u.irqchip.irqchip;
  e->irqchip.pin = ue->u.irqchip.pin;
  if (e->irqchip.pin >= KVM_IRQCHIP_NUM_PINS)
   goto out;
  break;
 case 128:
  e->set = kvm_set_msi;
  e->msi.address_lo = ue->u.msi.address_lo;
  e->msi.address_hi = ue->u.msi.address_hi;
  e->msi.data = ue->u.msi.data;
  break;
 default:
  goto out;
 }

 r = 0;
out:
 return r;
}
