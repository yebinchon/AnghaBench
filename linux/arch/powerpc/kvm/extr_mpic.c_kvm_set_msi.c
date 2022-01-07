
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct openpic {int lock; } ;
struct TYPE_4__ {int data; } ;
struct kvm_kernel_irq_routing_entry {TYPE_2__ msi; } ;
struct TYPE_3__ {struct openpic* mpic; } ;
struct kvm {TYPE_1__ arch; } ;


 int MSIIR_OFFSET ;
 int openpic_msi_write (struct openpic*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int kvm_set_msi(struct kvm_kernel_irq_routing_entry *e,
  struct kvm *kvm, int irq_source_id, int level, bool line_status)
{
 struct openpic *opp = kvm->arch.mpic;
 unsigned long flags;

 spin_lock_irqsave(&opp->lock, flags);





 openpic_msi_write(kvm->arch.mpic, MSIIR_OFFSET, e->msi.data);
 spin_unlock_irqrestore(&opp->lock, flags);


 return 0;
}
