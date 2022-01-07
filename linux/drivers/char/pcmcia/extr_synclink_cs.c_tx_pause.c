
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_4__ {int lock; scalar_t__ tx_enabled; int device_name; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 scalar_t__ DEBUG_LEVEL_INFO ;
 scalar_t__ debug_level ;
 scalar_t__ mgslpc_paranoia_check (TYPE_1__*,int ,char*) ;
 int printk (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_stop (TYPE_1__*) ;

__attribute__((used)) static void tx_pause(struct tty_struct *tty)
{
 MGSLPC_INFO *info = (MGSLPC_INFO *)tty->driver_data;
 unsigned long flags;

 if (mgslpc_paranoia_check(info, tty->name, "tx_pause"))
  return;
 if (debug_level >= DEBUG_LEVEL_INFO)
  printk("tx_pause(%s)\n", info->device_name);

 spin_lock_irqsave(&info->lock, flags);
 if (info->tx_enabled)
  tx_stop(info);
 spin_unlock_irqrestore(&info->lock, flags);
}
