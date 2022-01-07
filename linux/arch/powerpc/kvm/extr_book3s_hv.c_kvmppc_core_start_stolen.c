
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcore {int stoltb_lock; int preempt_tb; } ;


 int mftb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kvmppc_core_start_stolen(struct kvmppc_vcore *vc)
{
 unsigned long flags;

 spin_lock_irqsave(&vc->stoltb_lock, flags);
 vc->preempt_tb = mftb();
 spin_unlock_irqrestore(&vc->stoltb_lock, flags);
}
