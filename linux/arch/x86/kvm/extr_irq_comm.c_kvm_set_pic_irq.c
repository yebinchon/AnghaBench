
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_pic {int dummy; } ;
struct TYPE_4__ {int pin; } ;
struct kvm_kernel_irq_routing_entry {TYPE_2__ irqchip; } ;
struct TYPE_3__ {struct kvm_pic* vpic; } ;
struct kvm {TYPE_1__ arch; } ;


 int kvm_pic_set_irq (struct kvm_pic*,int ,int,int) ;

__attribute__((used)) static int kvm_set_pic_irq(struct kvm_kernel_irq_routing_entry *e,
      struct kvm *kvm, int irq_source_id, int level,
      bool line_status)
{
 struct kvm_pic *pic = kvm->arch.vpic;
 return kvm_pic_set_irq(pic, e->irqchip.pin, irq_source_id, level);
}
