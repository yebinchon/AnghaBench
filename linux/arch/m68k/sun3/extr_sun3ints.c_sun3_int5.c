
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int get_irq_regs () ;
 int intersil_clear () ;
 unsigned int kstat_irqs_cpu (int,int ) ;
 int * led_pattern ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sun3_disable_irq (int) ;
 int sun3_enable_irq (int) ;
 int sun3_leds (int ) ;
 int update_process_times (int ) ;
 int user_mode (int ) ;
 int xtime_update (int) ;

__attribute__((used)) static irqreturn_t sun3_int5(int irq, void *dev_id)
{
 unsigned long flags;
 unsigned int cnt;

 local_irq_save(flags);



 sun3_disable_irq(5);
 sun3_enable_irq(5);



 xtime_update(1);
 update_process_times(user_mode(get_irq_regs()));
 cnt = kstat_irqs_cpu(irq, 0);
 if (!(cnt % 20))
  sun3_leds(led_pattern[cnt % 160 / 20]);
 local_irq_restore(flags);
 return IRQ_HANDLED;
}
