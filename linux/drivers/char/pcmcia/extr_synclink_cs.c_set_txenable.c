
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_5__ {int lock; scalar_t__ tx_enabled; int device_name; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 scalar_t__ DEBUG_LEVEL_INFO ;
 scalar_t__ debug_level ;
 int printk (char*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_start (TYPE_1__*,struct tty_struct*) ;
 int tx_stop (TYPE_1__*) ;

__attribute__((used)) static int set_txenable(MGSLPC_INFO * info, int enable, struct tty_struct *tty)
{
 unsigned long flags;

 if (debug_level >= DEBUG_LEVEL_INFO)
  printk("set_txenable(%s,%d)\n", info->device_name, enable);

 spin_lock_irqsave(&info->lock, flags);
 if (enable) {
  if (!info->tx_enabled)
   tx_start(info, tty);
 } else {
  if (info->tx_enabled)
   tx_stop(info);
 }
 spin_unlock_irqrestore(&info->lock, flags);
 return 0;
}
