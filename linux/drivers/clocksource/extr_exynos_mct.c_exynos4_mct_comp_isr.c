
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int EXYNOS4_MCT_G_INT_CSTAT ;
 int IRQ_HANDLED ;
 int exynos4_mct_write (int,int ) ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t exynos4_mct_comp_isr(int irq, void *dev_id)
{
 struct clock_event_device *evt = dev_id;

 exynos4_mct_write(0x1, EXYNOS4_MCT_G_INT_CSTAT);

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
