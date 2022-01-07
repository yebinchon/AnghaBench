
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_char ;
typedef int u32 ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {int tx_lock; int close_wait; scalar_t__ close_pending; scalar_t__ reg; } ;


 int CTRL_LED ;
 int HZ ;
 scalar_t__ IPHASE5575_BUS_CONTROL_REG ;
 TYPE_1__** ia_dev ;
 int ia_timer ;
 int ia_tx_poll (TYPE_1__*) ;
 int ia_update_stats (TYPE_1__*) ;
 size_t iadev_count ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ia_led_timer(struct timer_list *unused) {
  unsigned long flags;
   static u_char blinking[8] = {0, 0, 0, 0, 0, 0, 0, 0};
        u_char i;
        static u32 ctrl_reg;
        for (i = 0; i < iadev_count; i++) {
           if (ia_dev[i]) {
       ctrl_reg = readl(ia_dev[i]->reg+IPHASE5575_BUS_CONTROL_REG);
       if (blinking[i] == 0) {
   blinking[i]++;
                 ctrl_reg &= (~CTRL_LED);
                 writel(ctrl_reg, ia_dev[i]->reg+IPHASE5575_BUS_CONTROL_REG);
                 ia_update_stats(ia_dev[i]);
              }
              else {
   blinking[i] = 0;
   ctrl_reg |= CTRL_LED;
                 writel(ctrl_reg, ia_dev[i]->reg+IPHASE5575_BUS_CONTROL_REG);
                 spin_lock_irqsave(&ia_dev[i]->tx_lock, flags);
                 if (ia_dev[i]->close_pending)
                    wake_up(&ia_dev[i]->close_wait);
                 ia_tx_poll(ia_dev[i]);
                 spin_unlock_irqrestore(&ia_dev[i]->tx_lock, flags);
              }
           }
        }
 mod_timer(&ia_timer, jiffies + HZ / 4);
  return;
}
