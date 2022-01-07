
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; scalar_t__ rx_enabled; int device_name; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 scalar_t__ DEBUG_LEVEL_INFO ;
 scalar_t__ debug_level ;
 int printk (char*,int ,int) ;
 int rx_start (TYPE_1__*) ;
 int rx_stop (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int set_rxenable(MGSLPC_INFO * info, int enable)
{
 unsigned long flags;

 if (debug_level >= DEBUG_LEVEL_INFO)
  printk("set_rxenable(%s,%d)\n", info->device_name, enable);

 spin_lock_irqsave(&info->lock, flags);
 if (enable) {
  if (!info->rx_enabled)
   rx_start(info);
 } else {
  if (info->rx_enabled)
   rx_stop(info);
 }
 spin_unlock_irqrestore(&info->lock, flags);
 return 0;
}
