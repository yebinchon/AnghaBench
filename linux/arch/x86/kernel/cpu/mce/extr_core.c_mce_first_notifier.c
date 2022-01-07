
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct mce {int dummy; } ;


 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 scalar_t__ cec_add_mce (struct mce*) ;
 int mce_need_notify ;
 int mce_notify_irq () ;
 int set_bit (int ,int *) ;
 int trace_mce_record (struct mce*) ;

__attribute__((used)) static int mce_first_notifier(struct notifier_block *nb, unsigned long val,
         void *data)
{
 struct mce *m = (struct mce *)data;

 if (!m)
  return NOTIFY_DONE;

 if (cec_add_mce(m))
  return NOTIFY_STOP;


 trace_mce_record(m);

 set_bit(0, &mce_need_notify);

 mce_notify_irq();

 return NOTIFY_DONE;
}
