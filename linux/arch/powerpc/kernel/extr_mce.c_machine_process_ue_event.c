
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_4__ {unsigned long physical_address; scalar_t__ physical_address_provided; scalar_t__ ignore_event; } ;
struct TYPE_3__ {TYPE_2__ ue_error; } ;
struct machine_check_event {scalar_t__ error_type; TYPE_1__ u; } ;


 scalar_t__ MCE_ERROR_TYPE_UE ;
 unsigned long PAGE_SHIFT ;
 int __this_cpu_dec (int ) ;
 int __this_cpu_read (int ) ;
 int mce_ue_count ;
 int * mce_ue_event_queue ;
 int memory_failure (unsigned long,int ) ;
 int pr_warn (char*) ;
 struct machine_check_event* this_cpu_ptr (int *) ;

__attribute__((used)) static void machine_process_ue_event(struct work_struct *work)
{
 int index;
 struct machine_check_event *evt;

 while (__this_cpu_read(mce_ue_count) > 0) {
  index = __this_cpu_read(mce_ue_count) - 1;
  evt = this_cpu_ptr(&mce_ue_event_queue[index]);
  __this_cpu_dec(mce_ue_count);
 }
}
