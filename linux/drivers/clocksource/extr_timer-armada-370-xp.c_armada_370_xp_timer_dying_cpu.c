
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int irq; int (* set_state_shutdown ) (struct clock_event_device*) ;} ;


 int armada_370_xp_evt ;
 int disable_percpu_irq (int ) ;
 struct clock_event_device* per_cpu_ptr (int ,unsigned int) ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static int armada_370_xp_timer_dying_cpu(unsigned int cpu)
{
 struct clock_event_device *evt = per_cpu_ptr(armada_370_xp_evt, cpu);

 evt->set_state_shutdown(evt);
 disable_percpu_irq(evt->irq);
 return 0;
}
