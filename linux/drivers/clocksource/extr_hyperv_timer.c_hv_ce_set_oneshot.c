
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union hv_stimer_config {int enable; int auto_enable; int direct_mode; scalar_t__ as_uint64; int sintx; int apic_vector; } ;
struct clock_event_device {int dummy; } ;


 scalar_t__ direct_mode_enabled ;
 int hv_enable_stimer0_percpu_irq (int ) ;
 int hv_init_timer_config (int ,scalar_t__) ;
 int stimer0_irq ;
 int stimer0_message_sint ;
 int stimer0_vector ;

__attribute__((used)) static int hv_ce_set_oneshot(struct clock_event_device *evt)
{
 union hv_stimer_config timer_cfg;

 timer_cfg.as_uint64 = 0;
 timer_cfg.enable = 1;
 timer_cfg.auto_enable = 1;
 if (direct_mode_enabled) {




  timer_cfg.direct_mode = 1;
  timer_cfg.apic_vector = stimer0_vector;
  hv_enable_stimer0_percpu_irq(stimer0_irq);
 } else {




  timer_cfg.direct_mode = 0;
  timer_cfg.sintx = stimer0_message_sint;
 }
 hv_init_timer_config(0, timer_cfg.as_uint64);
 return 0;
}
