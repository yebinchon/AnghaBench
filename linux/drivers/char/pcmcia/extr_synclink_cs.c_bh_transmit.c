
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_3__ {int device_name; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 scalar_t__ DEBUG_LEVEL_BH ;
 scalar_t__ debug_level ;
 int printk (char*,int ) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void bh_transmit(MGSLPC_INFO *info, struct tty_struct *tty)
{
 if (debug_level >= DEBUG_LEVEL_BH)
  printk("bh_transmit() entry on %s\n", info->device_name);

 if (tty)
  tty_wakeup(tty);
}
