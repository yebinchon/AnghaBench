
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_work {int dummy; } ;


 int mce_schedule_work () ;

__attribute__((used)) static void mce_irq_work_cb(struct irq_work *entry)
{
 mce_schedule_work();
}
