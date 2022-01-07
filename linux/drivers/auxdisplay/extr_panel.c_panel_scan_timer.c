
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct TYPE_3__ {int charlcd; scalar_t__ initialized; scalar_t__ enabled; } ;


 scalar_t__ INPUT_POLL_TIME ;
 int charlcd_poke (int ) ;
 int inputs_stable ;
 scalar_t__ jiffies ;
 TYPE_2__ keypad ;
 scalar_t__ keypad_initialized ;
 scalar_t__ keypressed ;
 TYPE_1__ lcd ;
 int mod_timer (int *,scalar_t__) ;
 int panel_process_inputs () ;
 scalar_t__ phys_curr ;
 scalar_t__ phys_prev ;
 int phys_scan_contacts () ;
 int pprt_lock ;
 int scan_timer ;
 scalar_t__ spin_trylock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void panel_scan_timer(struct timer_list *unused)
{
 if (keypad.enabled && keypad_initialized) {
  if (spin_trylock_irq(&pprt_lock)) {
   phys_scan_contacts();


   spin_unlock_irq(&pprt_lock);
  }

  if (!inputs_stable || phys_curr != phys_prev)
   panel_process_inputs();
 }

 if (keypressed && lcd.enabled && lcd.initialized)
  charlcd_poke(lcd.charlcd);

 mod_timer(&scan_timer, jiffies + INPUT_POLL_TIME);
}
