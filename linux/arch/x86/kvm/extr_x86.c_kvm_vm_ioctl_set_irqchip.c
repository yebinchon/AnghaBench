
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_pic_state {int dummy; } ;
struct kvm_pic {int lock; int * pics; } ;
struct TYPE_4__ {int ioapic; int pic; } ;
struct kvm_irqchip {int chip_id; TYPE_2__ chip; } ;
struct TYPE_3__ {struct kvm_pic* vpic; } ;
struct kvm {TYPE_1__ arch; } ;


 int EINVAL ;



 int kvm_pic_update_irq (struct kvm_pic*) ;
 int kvm_set_ioapic (struct kvm*,int *) ;
 int memcpy (int *,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_set_irqchip(struct kvm *kvm, struct kvm_irqchip *chip)
{
 struct kvm_pic *pic = kvm->arch.vpic;
 int r;

 r = 0;
 switch (chip->chip_id) {
 case 129:
  spin_lock(&pic->lock);
  memcpy(&pic->pics[0], &chip->chip.pic,
   sizeof(struct kvm_pic_state));
  spin_unlock(&pic->lock);
  break;
 case 128:
  spin_lock(&pic->lock);
  memcpy(&pic->pics[1], &chip->chip.pic,
   sizeof(struct kvm_pic_state));
  spin_unlock(&pic->lock);
  break;
 case 130:
  kvm_set_ioapic(kvm, &chip->chip.ioapic);
  break;
 default:
  r = -EINVAL;
  break;
 }
 kvm_pic_update_irq(pic);
 return r;
}
