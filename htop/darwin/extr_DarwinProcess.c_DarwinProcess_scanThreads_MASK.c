#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_address_t ;
typedef  int /*<<< orphan*/  thread_port_array_t ;
typedef  int /*<<< orphan*/  thread_info_t ;
typedef  scalar_t__ thread_info_data_t ;
typedef  TYPE_1__* thread_basic_info_t ;
typedef  int /*<<< orphan*/ * thread_array_t ;
typedef  int /*<<< orphan*/  task_t ;
typedef  int /*<<< orphan*/  task_info_t ;
typedef  scalar_t__ task_info_data_t ;
typedef  unsigned int mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ integer_t ;
struct TYPE_7__ {int taskAccess; } ;
struct TYPE_6__ {char state; int /*<<< orphan*/  pid; } ;
struct TYPE_5__ {scalar_t__ run_state; } ;
typedef  TYPE_2__ Process ;
typedef  TYPE_3__ DarwinProcess ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  TASK_BASIC_INFO ; 
 unsigned int TASK_INFO_MAX ; 
 int /*<<< orphan*/  THREAD_BASIC_INFO ; 
 unsigned int THREAD_BASIC_INFO_COUNT ; 
#define  TH_STATE_HALTED 132 
#define  TH_STATE_RUNNING 131 
#define  TH_STATE_STOPPED 130 
#define  TH_STATE_UNINTERRUPTIBLE 129 
#define  TH_STATE_WAITING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,unsigned int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC7(DarwinProcess *dp) {
   Process* proc = (Process*) dp;
   kern_return_t ret;
   
   if (!dp->taskAccess) {
      return;
   }
   
   if (proc->state == 'Z') {
      return;
   }

   task_t port;
   ret = FUNC2(FUNC1(), proc->pid, &port);
   if (ret != KERN_SUCCESS) {
      dp->taskAccess = false;
      return;
   }
   
   task_info_data_t tinfo;
   mach_msg_type_number_t task_info_count = TASK_INFO_MAX;
   ret = FUNC3(port, TASK_BASIC_INFO, (task_info_t) tinfo, &task_info_count);
   if (ret != KERN_SUCCESS) {
      dp->taskAccess = false;
      return;
   }
   
   thread_array_t thread_list;
   mach_msg_type_number_t thread_count;
   ret = FUNC4(port, &thread_list, &thread_count);
   if (ret != KERN_SUCCESS) {
      dp->taskAccess = false;
      FUNC0(FUNC1(), port);
      return;
   }
   
   integer_t run_state = 999;
   for (unsigned int i = 0; i < thread_count; i++) {
      thread_info_data_t thinfo;
      mach_msg_type_number_t thread_info_count = THREAD_BASIC_INFO_COUNT;
      ret = FUNC5(thread_list[i], THREAD_BASIC_INFO, (thread_info_t)thinfo, &thread_info_count);
      if (ret == KERN_SUCCESS) {
         thread_basic_info_t basic_info_th = (thread_basic_info_t) thinfo;
         if (basic_info_th->run_state < run_state) {
            run_state = basic_info_th->run_state;
         }
         FUNC0(FUNC1(), thread_list[i]);
      }
   }
   FUNC6(FUNC1(), (vm_address_t) thread_list, sizeof(thread_port_array_t) * thread_count);
   FUNC0(FUNC1(), port);

   char state = '?';
   switch (run_state) {
      case TH_STATE_RUNNING: state = 'R'; break;
      case TH_STATE_STOPPED: state = 'S'; break;
      case TH_STATE_WAITING: state = 'W'; break;
      case TH_STATE_UNINTERRUPTIBLE: state = 'U'; break;
      case TH_STATE_HALTED: state = 'H'; break;
   }
   proc->state = state;
}