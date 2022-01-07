
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_work {int dummy; } ;


 int mce_ue_event_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void machine_check_ue_irq_work(struct irq_work *work)
{
 schedule_work(&mce_ue_event_work);
}
