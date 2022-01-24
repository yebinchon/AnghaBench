#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  UsersTable ;
struct TYPE_6__ {scalar_t__ runningTasks; scalar_t__ totalTasks; scalar_t__ userlandThreads; scalar_t__ kernelThreads; int /*<<< orphan*/  cpuCount; } ;
struct TYPE_7__ {TYPE_1__ super; int /*<<< orphan*/  vm_stats; int /*<<< orphan*/  curr_load; int /*<<< orphan*/  host_info; int /*<<< orphan*/  prev_load; } ;
typedef  TYPE_1__ ProcessList ;
typedef  int /*<<< orphan*/  Hashtable ;
typedef  TYPE_2__ DarwinProcessList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Process ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int,int) ; 

ProcessList* FUNC6(UsersTable* usersTable, Hashtable* pidWhiteList, uid_t userId) {
   DarwinProcessList* this = FUNC5(1, sizeof(DarwinProcessList));

   FUNC4(&this->super, FUNC0(Process), usersTable, pidWhiteList, userId);

   /* Initialize the CPU information */
   this->super.cpuCount = FUNC1(&this->prev_load);
   FUNC2(&this->host_info);
   FUNC1(&this->curr_load);

   /* Initialize the VM statistics */
   FUNC3(&this->vm_stats);

   this->super.kernelThreads = 0;
   this->super.userlandThreads = 0;
   this->super.totalTasks = 0;
   this->super.runningTasks = 0;

   return &this->super;
}