
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcore {scalar_t__ preempt_tb; int stoltb_lock; int stolen_tb; } ;


 scalar_t__ TB_NIL ;
 scalar_t__ mftb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kvmppc_core_end_stolen(struct kvmppc_vcore *vc)
{
 unsigned long flags;

 spin_lock_irqsave(&vc->stoltb_lock, flags);
 if (vc->preempt_tb != TB_NIL) {
  vc->stolen_tb += mftb() - vc->preempt_tb;
  vc->preempt_tb = TB_NIL;
 }
 spin_unlock_irqrestore(&vc->stoltb_lock, flags);
}
