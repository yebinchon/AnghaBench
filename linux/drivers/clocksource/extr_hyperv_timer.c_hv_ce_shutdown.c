
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ direct_mode_enabled ;
 int hv_disable_stimer0_percpu_irq (int ) ;
 int hv_init_timer (int ,int ) ;
 int hv_init_timer_config (int ,int ) ;
 int stimer0_irq ;

__attribute__((used)) static int hv_ce_shutdown(struct clock_event_device *evt)
{
 hv_init_timer(0, 0);
 hv_init_timer_config(0, 0);
 if (direct_mode_enabled)
  hv_disable_stimer0_percpu_irq(stimer0_irq);

 return 0;
}
