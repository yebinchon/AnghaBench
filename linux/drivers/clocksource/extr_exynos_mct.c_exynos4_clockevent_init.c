
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpumask; } ;


 size_t MCT_G0_IRQ ;
 int clk_rate ;
 int clockevents_config_and_register (TYPE_1__*,int ,int,int) ;
 int cpumask_of (int ) ;
 TYPE_1__ mct_comp_device ;
 int mct_comp_event_irq ;
 int * mct_irqs ;
 int setup_irq (int ,int *) ;

__attribute__((used)) static int exynos4_clockevent_init(void)
{
 mct_comp_device.cpumask = cpumask_of(0);
 clockevents_config_and_register(&mct_comp_device, clk_rate,
     0xf, 0xffffffff);
 setup_irq(mct_irqs[MCT_G0_IRQ], &mct_comp_event_irq);

 return 0;
}
