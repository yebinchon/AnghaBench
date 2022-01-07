
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvmppc_vcore {scalar_t__ stolen_tb; scalar_t__ vcore_state; scalar_t__ preempt_tb; int stoltb_lock; } ;


 scalar_t__ TB_NIL ;
 scalar_t__ VCORE_INACTIVE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u64 vcore_stolen_time(struct kvmppc_vcore *vc, u64 now)
{
 u64 p;
 unsigned long flags;

 spin_lock_irqsave(&vc->stoltb_lock, flags);
 p = vc->stolen_tb;
 if (vc->vcore_state != VCORE_INACTIVE &&
     vc->preempt_tb != TB_NIL)
  p += now - vc->preempt_tb;
 spin_unlock_irqrestore(&vc->stoltb_lock, flags);
 return p;
}
