
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airq_struct {int dummy; } ;


 int IRQIO_GAL ;
 int inc_irq_stat (int ) ;
 int process_gib_alert_list () ;

__attribute__((used)) static void gib_alert_irq_handler(struct airq_struct *airq, bool floating)
{
 inc_irq_stat(IRQIO_GAL);
 process_gib_alert_list();
}
