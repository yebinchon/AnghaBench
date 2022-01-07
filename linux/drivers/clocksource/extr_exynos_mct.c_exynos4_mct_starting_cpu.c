
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int features; int rating; int irq; void* tick_resume; void* set_state_oneshot_stopped; void* set_state_oneshot; void* set_state_shutdown; int set_state_periodic; int set_next_event; int cpumask; int name; } ;
struct mct_clock_event_device {scalar_t__ base; int name; struct clock_event_device evt; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 int CLOCK_EVT_FEAT_PERIODIC ;
 int EIO ;
 scalar_t__ EXYNOS4_MCT_L_BASE (unsigned int) ;
 scalar_t__ MCT_INT_SPI ;
 size_t MCT_L0_IRQ ;
 scalar_t__ MCT_L_TCNTB_OFFSET ;
 int TICK_BASE_CNT ;
 int clk_rate ;
 int clockevents_config_and_register (struct clock_event_device*,int,int,int) ;
 int cpumask_of (unsigned int) ;
 int enable_irq (int) ;
 int enable_percpu_irq (int ,int ) ;
 int exynos4_mct_write (int,scalar_t__) ;
 int exynos4_tick_set_next_event ;
 int irq_force_affinity (int,int ) ;
 scalar_t__ mct_int_type ;
 int * mct_irqs ;
 struct mct_clock_event_device* per_cpu_ptr (int *,unsigned int) ;
 int percpu_mct_tick ;
 int set_state_periodic ;
 void* set_state_shutdown ;
 int snprintf (int ,int,char*,unsigned int) ;

__attribute__((used)) static int exynos4_mct_starting_cpu(unsigned int cpu)
{
 struct mct_clock_event_device *mevt =
  per_cpu_ptr(&percpu_mct_tick, cpu);
 struct clock_event_device *evt = &mevt->evt;

 mevt->base = EXYNOS4_MCT_L_BASE(cpu);
 snprintf(mevt->name, sizeof(mevt->name), "mct_tick%d", cpu);

 evt->name = mevt->name;
 evt->cpumask = cpumask_of(cpu);
 evt->set_next_event = exynos4_tick_set_next_event;
 evt->set_state_periodic = set_state_periodic;
 evt->set_state_shutdown = set_state_shutdown;
 evt->set_state_oneshot = set_state_shutdown;
 evt->set_state_oneshot_stopped = set_state_shutdown;
 evt->tick_resume = set_state_shutdown;
 evt->features = CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT;
 evt->rating = 500;

 exynos4_mct_write(TICK_BASE_CNT, mevt->base + MCT_L_TCNTB_OFFSET);

 if (mct_int_type == MCT_INT_SPI) {

  if (evt->irq == -1)
   return -EIO;

  irq_force_affinity(evt->irq, cpumask_of(cpu));
  enable_irq(evt->irq);
 } else {
  enable_percpu_irq(mct_irqs[MCT_L0_IRQ], 0);
 }
 clockevents_config_and_register(evt, clk_rate / (TICK_BASE_CNT + 1),
     0xf, 0x7fffffff);

 return 0;
}
