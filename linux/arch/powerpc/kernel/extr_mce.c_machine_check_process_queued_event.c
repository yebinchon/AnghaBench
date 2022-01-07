
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ignore_event; } ;
struct TYPE_4__ {TYPE_1__ ue_error; } ;
struct machine_check_event {scalar_t__ error_type; TYPE_2__ u; } ;
struct irq_work {int dummy; } ;


 int LOCKDEP_NOW_UNRELIABLE ;
 scalar_t__ MCE_ERROR_TYPE_UE ;
 int TAINT_MACHINE_CHECK ;
 int __this_cpu_dec (int ) ;
 int __this_cpu_read (int ) ;
 int add_taint (int ,int ) ;
 int machine_check_print_event_info (struct machine_check_event*,int,int) ;
 int * mce_event_queue ;
 int mce_queue_count ;
 struct machine_check_event* this_cpu_ptr (int *) ;

__attribute__((used)) static void machine_check_process_queued_event(struct irq_work *work)
{
 int index;
 struct machine_check_event *evt;

 add_taint(TAINT_MACHINE_CHECK, LOCKDEP_NOW_UNRELIABLE);





 while (__this_cpu_read(mce_queue_count) > 0) {
  index = __this_cpu_read(mce_queue_count) - 1;
  evt = this_cpu_ptr(&mce_event_queue[index]);

  if (evt->error_type == MCE_ERROR_TYPE_UE &&
      evt->u.ue_error.ignore_event) {
   __this_cpu_dec(mce_queue_count);
   continue;
  }
  machine_check_print_event_info(evt, 0, 0);
  __this_cpu_dec(mce_queue_count);
 }
}
