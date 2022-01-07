
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx {int lock; int oom_timer; int napi; int dev; } ;


 int ag71xx_dma_reset (struct ag71xx*) ;
 int ag71xx_hw_stop (struct ag71xx*) ;
 int ag71xx_rings_cleanup (struct ag71xx*) ;
 int del_timer_sync (int *) ;
 int napi_disable (int *) ;
 int netif_stop_queue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ag71xx_hw_disable(struct ag71xx *ag)
{
 unsigned long flags;

 spin_lock_irqsave(&ag->lock, flags);

 netif_stop_queue(ag->dev);

 ag71xx_hw_stop(ag);
 ag71xx_dma_reset(ag);

 napi_disable(&ag->napi);
 del_timer_sync(&ag->oom_timer);

 spin_unlock_irqrestore(&ag->lock, flags);

 ag71xx_rings_cleanup(ag);
}
