
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int irq; int (* set_state_shutdown ) (struct clock_event_device*) ;} ;
struct mct_clock_event_device {scalar_t__ base; struct clock_event_device evt; } ;


 scalar_t__ MCT_INT_SPI ;
 size_t MCT_L0_IRQ ;
 scalar_t__ MCT_L_INT_CSTAT_OFFSET ;
 int disable_irq_nosync (int) ;
 int disable_percpu_irq (int ) ;
 int exynos4_mct_write (int,scalar_t__) ;
 scalar_t__ mct_int_type ;
 int * mct_irqs ;
 struct mct_clock_event_device* per_cpu_ptr (int *,unsigned int) ;
 int percpu_mct_tick ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static int exynos4_mct_dying_cpu(unsigned int cpu)
{
 struct mct_clock_event_device *mevt =
  per_cpu_ptr(&percpu_mct_tick, cpu);
 struct clock_event_device *evt = &mevt->evt;

 evt->set_state_shutdown(evt);
 if (mct_int_type == MCT_INT_SPI) {
  if (evt->irq != -1)
   disable_irq_nosync(evt->irq);
  exynos4_mct_write(0x1, mevt->base + MCT_L_INT_CSTAT_OFFSET);
 } else {
  disable_percpu_irq(mct_irqs[MCT_L0_IRQ]);
 }
 return 0;
}
