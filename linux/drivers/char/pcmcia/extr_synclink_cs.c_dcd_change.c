
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_11__ {int open_wait; } ;
struct TYPE_9__ {int dcd_down; int dcd_up; } ;
struct TYPE_8__ {int dcd; } ;
struct TYPE_10__ {int serial_signals; int pending_bh; TYPE_4__ port; int device_name; int event_wait_q; int status_event_wait_q; int netdev; scalar_t__ netcount; TYPE_2__ input_signal_events; TYPE_1__ icount; int dcd_chkcount; } ;
typedef TYPE_3__ MGSLPC_INFO ;


 int BH_STATUS ;
 int CHB ;
 scalar_t__ DEBUG_LEVEL_ISR ;
 scalar_t__ IO_PIN_SHUTDOWN_LIMIT ;
 int IRQ_DCD ;
 int SerialSignal_DCD ;
 scalar_t__ debug_level ;
 int get_signals (TYPE_3__*) ;
 int irq_disable (TYPE_3__*,int ,int ) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int printk (char*,...) ;
 int tty_hangup (struct tty_struct*) ;
 scalar_t__ tty_port_check_carrier (TYPE_4__*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void dcd_change(MGSLPC_INFO *info, struct tty_struct *tty)
{
 get_signals(info);
 if ((info->dcd_chkcount)++ >= IO_PIN_SHUTDOWN_LIMIT)
  irq_disable(info, CHB, IRQ_DCD);
 info->icount.dcd++;
 if (info->serial_signals & SerialSignal_DCD) {
  info->input_signal_events.dcd_up++;
 }
 else
  info->input_signal_events.dcd_down++;
 wake_up_interruptible(&info->status_event_wait_q);
 wake_up_interruptible(&info->event_wait_q);

 if (tty_port_check_carrier(&info->port)) {
  if (debug_level >= DEBUG_LEVEL_ISR)
   printk("%s CD now %s...", info->device_name,
          (info->serial_signals & SerialSignal_DCD) ? "on" : "off");
  if (info->serial_signals & SerialSignal_DCD)
   wake_up_interruptible(&info->port.open_wait);
  else {
   if (debug_level >= DEBUG_LEVEL_ISR)
    printk("doing serial hangup...");
   if (tty)
    tty_hangup(tty);
  }
 }
 info->pending_bh |= BH_STATUS;
}
