
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int irq; } ;


 int disable_percpu_irq (int ) ;
 struct clock_event_device* raw_cpu_ptr (int ) ;
 int twd_evt ;
 int twd_shutdown (struct clock_event_device*) ;

__attribute__((used)) static void twd_timer_stop(void)
{
 struct clock_event_device *clk = raw_cpu_ptr(twd_evt);

 twd_shutdown(clk);
 disable_percpu_irq(clk->irq);
}
