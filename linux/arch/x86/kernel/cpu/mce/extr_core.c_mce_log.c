
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int dummy; } ;


 int irq_work_queue (int *) ;
 int mce_gen_pool_add (struct mce*) ;
 int mce_irq_work ;

void mce_log(struct mce *m)
{
 if (!mce_gen_pool_add(m))
  irq_work_queue(&mce_irq_work);
}
