
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct openpic {int lock; } ;
struct TYPE_3__ {int pin; } ;
struct kvm_kernel_irq_routing_entry {TYPE_1__ irqchip; } ;
struct TYPE_4__ {struct openpic* mpic; } ;
struct kvm {TYPE_2__ arch; } ;


 int openpic_set_irq (struct openpic*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mpic_set_irq(struct kvm_kernel_irq_routing_entry *e,
   struct kvm *kvm, int irq_source_id, int level,
   bool line_status)
{
 u32 irq = e->irqchip.pin;
 struct openpic *opp = kvm->arch.mpic;
 unsigned long flags;

 spin_lock_irqsave(&opp->lock, flags);
 openpic_set_irq(opp, irq, level);
 spin_unlock_irqrestore(&opp->lock, flags);


 return 0;
}
