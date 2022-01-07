
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int sint; int vcpu; } ;
struct TYPE_10__ {int data; int address_hi; int address_lo; } ;
struct TYPE_8__ {int pin; int irqchip; } ;
struct kvm_kernel_irq_routing_entry {TYPE_5__ hv_sint; int set; TYPE_3__ msi; TYPE_1__ irqchip; } ;
struct TYPE_13__ {int sint; int vcpu; } ;
struct TYPE_11__ {int data; int address_hi; int address_lo; } ;
struct TYPE_9__ {int pin; int irqchip; } ;
struct TYPE_14__ {TYPE_6__ hv_sint; TYPE_4__ msi; TYPE_2__ irqchip; } ;
struct kvm_irq_routing_entry {int type; TYPE_7__ u; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 int KVM_IOAPIC_NUM_PINS ;






 int PIC_NUM_PINS ;
 int irqchip_split (struct kvm*) ;
 int kvm_hv_set_sint ;
 int kvm_msi_route_invalid (struct kvm*,struct kvm_kernel_irq_routing_entry*) ;
 int kvm_set_ioapic_irq ;
 int kvm_set_msi ;
 int kvm_set_pic_irq ;

int kvm_set_routing_entry(struct kvm *kvm,
     struct kvm_kernel_irq_routing_entry *e,
     const struct kvm_irq_routing_entry *ue)
{




 switch (ue->type) {
 case 129:
  if (irqchip_split(kvm))
   return -EINVAL;
  e->irqchip.pin = ue->u.irqchip.pin;
  switch (ue->u.irqchip.irqchip) {
  case 131:
   e->irqchip.pin += PIC_NUM_PINS / 2;

  case 132:
   if (ue->u.irqchip.pin >= PIC_NUM_PINS / 2)
    return -EINVAL;
   e->set = kvm_set_pic_irq;
   break;
  case 133:
   if (ue->u.irqchip.pin >= KVM_IOAPIC_NUM_PINS)
    return -EINVAL;
   e->set = kvm_set_ioapic_irq;
   break;
  default:
   return -EINVAL;
  }
  e->irqchip.irqchip = ue->u.irqchip.irqchip;
  break;
 case 128:
  e->set = kvm_set_msi;
  e->msi.address_lo = ue->u.msi.address_lo;
  e->msi.address_hi = ue->u.msi.address_hi;
  e->msi.data = ue->u.msi.data;

  if (kvm_msi_route_invalid(kvm, e))
   return -EINVAL;
  break;
 case 130:
  e->set = kvm_hv_set_sint;
  e->hv_sint.vcpu = ue->u.hv_sint.vcpu;
  e->hv_sint.sint = ue->u.hv_sint.sint;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
