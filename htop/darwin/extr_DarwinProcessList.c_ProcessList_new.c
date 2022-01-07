
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uid_t ;
typedef int UsersTable ;
struct TYPE_6__ {scalar_t__ runningTasks; scalar_t__ totalTasks; scalar_t__ userlandThreads; scalar_t__ kernelThreads; int cpuCount; } ;
struct TYPE_7__ {TYPE_1__ super; int vm_stats; int curr_load; int host_info; int prev_load; } ;
typedef TYPE_1__ ProcessList ;
typedef int Hashtable ;
typedef TYPE_2__ DarwinProcessList ;


 int Class (int ) ;
 int Process ;
 int ProcessList_allocateCPULoadInfo (int *) ;
 int ProcessList_getHostInfo (int *) ;
 int ProcessList_getVMStats (int *) ;
 int ProcessList_init (TYPE_1__*,int ,int *,int *,int ) ;
 TYPE_2__* xCalloc (int,int) ;

ProcessList* ProcessList_new(UsersTable* usersTable, Hashtable* pidWhiteList, uid_t userId) {
   DarwinProcessList* this = xCalloc(1, sizeof(DarwinProcessList));

   ProcessList_init(&this->super, Class(Process), usersTable, pidWhiteList, userId);


   this->super.cpuCount = ProcessList_allocateCPULoadInfo(&this->prev_load);
   ProcessList_getHostInfo(&this->host_info);
   ProcessList_allocateCPULoadInfo(&this->curr_load);


   ProcessList_getVMStats(&this->vm_stats);

   this->super.kernelThreads = 0;
   this->super.userlandThreads = 0;
   this->super.totalTasks = 0;
   this->super.runningTasks = 0;

   return &this->super;
}
