
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine_check_event {int dummy; } ;
typedef int evt ;


 int MAX_MC_EVT ;
 int MCE_EVENT_RELEASE ;
 int __this_cpu_dec (int ) ;
 int __this_cpu_inc_return (int ) ;
 int get_mce_event (struct machine_check_event*,int ) ;
 int irq_work_queue (int *) ;
 int mce_event_process_work ;
 int * mce_event_queue ;
 int mce_queue_count ;
 int memcpy (int ,struct machine_check_event*,int) ;
 int this_cpu_ptr (int *) ;

void machine_check_queue_event(void)
{
 int index;
 struct machine_check_event evt;

 if (!get_mce_event(&evt, MCE_EVENT_RELEASE))
  return;

 index = __this_cpu_inc_return(mce_queue_count) - 1;

 if (index >= MAX_MC_EVT) {
  __this_cpu_dec(mce_queue_count);
  return;
 }
 memcpy(this_cpu_ptr(&mce_event_queue[index]), &evt, sizeof(evt));


 irq_work_queue(&mce_event_process_work);
}
