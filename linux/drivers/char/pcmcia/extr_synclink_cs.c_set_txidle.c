
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int idle_mode; int lock; int device_name; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 scalar_t__ DEBUG_LEVEL_INFO ;
 scalar_t__ debug_level ;
 int printk (char*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_set_idle (TYPE_1__*) ;

__attribute__((used)) static int set_txidle(MGSLPC_INFO * info, int idle_mode)
{
 unsigned long flags;
 if (debug_level >= DEBUG_LEVEL_INFO)
  printk("set_txidle(%s,%d)\n", info->device_name, idle_mode);
 spin_lock_irqsave(&info->lock, flags);
 info->idle_mode = idle_mode;
 tx_set_idle(info);
 spin_unlock_irqrestore(&info->lock, flags);
 return 0;
}
