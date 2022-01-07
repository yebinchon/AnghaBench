
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_address_t ;
typedef int thread_port_array_t ;
typedef int thread_info_t ;
typedef scalar_t__ thread_info_data_t ;
typedef TYPE_1__* thread_basic_info_t ;
typedef int * thread_array_t ;
typedef int task_t ;
typedef int task_info_t ;
typedef scalar_t__ task_info_data_t ;
typedef unsigned int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ integer_t ;
struct TYPE_7__ {int taskAccess; } ;
struct TYPE_6__ {char state; int pid; } ;
struct TYPE_5__ {scalar_t__ run_state; } ;
typedef TYPE_2__ Process ;
typedef TYPE_3__ DarwinProcess ;


 scalar_t__ KERN_SUCCESS ;
 int TASK_BASIC_INFO ;
 unsigned int TASK_INFO_MAX ;
 int THREAD_BASIC_INFO ;
 unsigned int THREAD_BASIC_INFO_COUNT ;





 int mach_port_deallocate (int ,int ) ;
 int mach_task_self () ;
 scalar_t__ task_for_pid (int ,int ,int *) ;
 scalar_t__ task_info (int ,int ,int ,unsigned int*) ;
 scalar_t__ task_threads (int ,int **,unsigned int*) ;
 scalar_t__ thread_info (int ,int ,int ,unsigned int*) ;
 int vm_deallocate (int ,int ,int) ;

void DarwinProcess_scanThreads(DarwinProcess *dp) {
   Process* proc = (Process*) dp;
   kern_return_t ret;

   if (!dp->taskAccess) {
      return;
   }

   if (proc->state == 'Z') {
      return;
   }

   task_t port;
   ret = task_for_pid(mach_task_self(), proc->pid, &port);
   if (ret != KERN_SUCCESS) {
      dp->taskAccess = 0;
      return;
   }

   task_info_data_t tinfo;
   mach_msg_type_number_t task_info_count = TASK_INFO_MAX;
   ret = task_info(port, TASK_BASIC_INFO, (task_info_t) tinfo, &task_info_count);
   if (ret != KERN_SUCCESS) {
      dp->taskAccess = 0;
      return;
   }

   thread_array_t thread_list;
   mach_msg_type_number_t thread_count;
   ret = task_threads(port, &thread_list, &thread_count);
   if (ret != KERN_SUCCESS) {
      dp->taskAccess = 0;
      mach_port_deallocate(mach_task_self(), port);
      return;
   }

   integer_t run_state = 999;
   for (unsigned int i = 0; i < thread_count; i++) {
      thread_info_data_t thinfo;
      mach_msg_type_number_t thread_info_count = THREAD_BASIC_INFO_COUNT;
      ret = thread_info(thread_list[i], THREAD_BASIC_INFO, (thread_info_t)thinfo, &thread_info_count);
      if (ret == KERN_SUCCESS) {
         thread_basic_info_t basic_info_th = (thread_basic_info_t) thinfo;
         if (basic_info_th->run_state < run_state) {
            run_state = basic_info_th->run_state;
         }
         mach_port_deallocate(mach_task_self(), thread_list[i]);
      }
   }
   vm_deallocate(mach_task_self(), (vm_address_t) thread_list, sizeof(thread_port_array_t) * thread_count);
   mach_port_deallocate(mach_task_self(), port);

   char state = '?';
   switch (run_state) {
      case 131: state = 'R'; break;
      case 130: state = 'S'; break;
      case 128: state = 'W'; break;
      case 129: state = 'U'; break;
      case 132: state = 'H'; break;
   }
   proc->state = state;
}
