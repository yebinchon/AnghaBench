
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine_check_event {int dummy; } ;


 int MAX_MC_EVT ;
 int __this_cpu_dec (int ) ;
 int __this_cpu_inc_return (int ) ;
 int irq_work_queue (int *) ;
 int mce_ue_count ;
 int mce_ue_event_irq_work ;
 int * mce_ue_event_queue ;
 int memcpy (int ,struct machine_check_event*,int) ;
 int this_cpu_ptr (int *) ;

__attribute__((used)) static void machine_check_ue_event(struct machine_check_event *evt)
{
 int index;

 index = __this_cpu_inc_return(mce_ue_count) - 1;

 if (index >= MAX_MC_EVT) {
  __this_cpu_dec(mce_ue_count);
  return;
 }
 memcpy(this_cpu_ptr(&mce_ue_event_queue[index]), evt, sizeof(*evt));


 irq_work_queue(&mce_ue_event_irq_work);
}
