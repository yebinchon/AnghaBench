
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int task_info_t ;
struct TYPE_2__ {size_t resident_size; } ;
typedef TYPE_1__ task_basic_info_data_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int TASK_BASIC_INFO ;
 int TASK_BASIC_INFO_COUNT ;
 int assert (int) ;
 int mach_task_self () ;
 scalar_t__ task_info (int ,int ,int ,int *) ;

int uv_resident_set_memory(size_t* rss) {
  mach_msg_type_number_t count;
  task_basic_info_data_t info;
  kern_return_t err;

  count = TASK_BASIC_INFO_COUNT;
  err = task_info(mach_task_self(),
                  TASK_BASIC_INFO,
                  (task_info_t) &info,
                  &count);
  (void) &err;



  assert(err == KERN_SUCCESS);
  *rss = info.resident_size;

  return 0;
}
