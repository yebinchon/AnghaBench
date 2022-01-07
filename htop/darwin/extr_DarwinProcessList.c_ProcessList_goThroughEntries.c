
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


struct timeval {int tv_sec; } ;
struct TYPE_18__ {int p_pid; } ;
struct kinfo_proc {TYPE_2__ kp_proc; } ;
struct TYPE_22__ {scalar_t__* cpu_ticks; } ;
struct TYPE_16__ {int st_uid; int user; } ;
struct TYPE_21__ {TYPE_11__ super; } ;
struct TYPE_17__ {int cpuCount; } ;
struct TYPE_20__ {TYPE_8__* prev_load; TYPE_8__* curr_load; scalar_t__ global_diff; TYPE_1__ super; int vm_stats; } ;
struct TYPE_19__ {int usersTable; scalar_t__ totalTasks; scalar_t__ runningTasks; scalar_t__ userlandThreads; scalar_t__ kernelThreads; } ;
typedef int Process_New ;
typedef TYPE_3__ ProcessList ;
typedef TYPE_4__ DarwinProcessList ;
typedef TYPE_5__ DarwinProcess ;


 size_t CPU_STATE_MAX ;
 scalar_t__ CompareKernelVersion (int,int,int ) ;
 scalar_t__ DarwinProcess_new ;
 int DarwinProcess_scanThreads (TYPE_5__*) ;
 int DarwinProcess_setFromKInfoProc (TYPE_11__*,struct kinfo_proc*,int ,int) ;
 int DarwinProcess_setFromLibprocPidinfo (TYPE_5__*,TYPE_4__*) ;
 int ProcessList_add (TYPE_3__*,TYPE_11__*) ;
 int ProcessList_allocateCPULoadInfo (TYPE_8__**) ;
 int ProcessList_freeCPULoadInfo (TYPE_8__**) ;
 struct kinfo_proc* ProcessList_getKInfoProcs (size_t*) ;
 scalar_t__ ProcessList_getProcess (TYPE_3__*,int ,int*,int ) ;
 int ProcessList_getVMStats (int *) ;
 int UsersTable_getRef (int ,int ) ;
 int free (struct kinfo_proc*) ;
 int gettimeofday (struct timeval*,int *) ;

void ProcessList_goThroughEntries(ProcessList* super) {
    DarwinProcessList *dpl = (DarwinProcessList *)super;
 bool preExisting = 1;
 struct kinfo_proc *ps;
 size_t count;
    DarwinProcess *proc;
    struct timeval tv;

    gettimeofday(&tv, ((void*)0));


    ProcessList_freeCPULoadInfo(&dpl->prev_load);
    dpl->prev_load = dpl->curr_load;
    ProcessList_allocateCPULoadInfo(&dpl->curr_load);
    ProcessList_getVMStats(&dpl->vm_stats);


    dpl->global_diff = 0;
    for(int i = 0; i < dpl->super.cpuCount; ++i) {
        for(size_t j = 0; j < CPU_STATE_MAX; ++j) {
            dpl->global_diff += dpl->curr_load[i].cpu_ticks[j] - dpl->prev_load[i].cpu_ticks[j];
        }
    }


    super->kernelThreads = 0;
    super->userlandThreads = 0;
    super->totalTasks = 0;
    super->runningTasks = 0;
    ps = ProcessList_getKInfoProcs(&count);

    for(size_t i = 0; i < count; ++i) {
       proc = (DarwinProcess *)ProcessList_getProcess(super, ps[i].kp_proc.p_pid, &preExisting, (Process_New)DarwinProcess_new);

       DarwinProcess_setFromKInfoProc(&proc->super, &ps[i], tv.tv_sec, preExisting);
       DarwinProcess_setFromLibprocPidinfo(proc, dpl);


       bool isScanThreadSupported = ! ( CompareKernelVersion(17, 0, 0) >= 0 && CompareKernelVersion(17, 5, 0) < 0);

       if (isScanThreadSupported){
           DarwinProcess_scanThreads(proc);
       }

       super->totalTasks += 1;

       if(!preExisting) {
           proc->super.user = UsersTable_getRef(super->usersTable, proc->super.st_uid);

           ProcessList_add(super, &proc->super);
       }
    }

    free(ps);
}
