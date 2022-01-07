
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct suni_priv {struct suni_priv* next; struct atm_dev* dev; } ;
struct atm_dev {int dummy; } ;


 struct suni_priv* PRIV (struct atm_dev*) ;
 int del_timer_sync (int *) ;
 int kfree (struct suni_priv*) ;
 int poll_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct suni_priv* sunis ;
 int sunis_lock ;

__attribute__((used)) static int suni_stop(struct atm_dev *dev)
{
 struct suni_priv **walk;
 unsigned long flags;


 spin_lock_irqsave(&sunis_lock,flags);
 for (walk = &sunis; *walk != PRIV(dev);
     walk = &PRIV((*walk)->dev)->next);
 *walk = PRIV((*walk)->dev)->next;
 if (!sunis) del_timer_sync(&poll_timer);
 spin_unlock_irqrestore(&sunis_lock,flags);
 kfree(PRIV(dev));

 return 0;
}
