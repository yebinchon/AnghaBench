
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpic_msgr {scalar_t__ in_use; } ;


 int EBUSY ;
 int ENODEV ;
 struct mpic_msgr* ERR_PTR (int ) ;
 scalar_t__ MSGR_FREE ;
 scalar_t__ MSGR_INUSE ;
 unsigned int mpic_msgr_count ;
 struct mpic_msgr** mpic_msgrs ;
 int msgrs_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

struct mpic_msgr *mpic_msgr_get(unsigned int reg_num)
{
 unsigned long flags;
 struct mpic_msgr *msgr;


 msgr = ERR_PTR(-EBUSY);

 if (reg_num >= mpic_msgr_count)
  return ERR_PTR(-ENODEV);

 raw_spin_lock_irqsave(&msgrs_lock, flags);
 msgr = mpic_msgrs[reg_num];
 if (msgr->in_use == MSGR_FREE)
  msgr->in_use = MSGR_INUSE;
 raw_spin_unlock_irqrestore(&msgrs_lock, flags);

 return msgr;
}
