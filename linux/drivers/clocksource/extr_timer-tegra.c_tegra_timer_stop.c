
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; int (* set_state_shutdown ) (TYPE_1__*) ;} ;
struct timer_of {TYPE_1__ clkevt; } ;


 int disable_irq_nosync (int ) ;
 struct timer_of* per_cpu_ptr (int *,unsigned int) ;
 int stub1 (TYPE_1__*) ;
 int tegra_to ;

__attribute__((used)) static int tegra_timer_stop(unsigned int cpu)
{
 struct timer_of *to = per_cpu_ptr(&tegra_to, cpu);

 to->clkevt.set_state_shutdown(&to->clkevt);
 disable_irq_nosync(to->clkevt.irq);

 return 0;
}
