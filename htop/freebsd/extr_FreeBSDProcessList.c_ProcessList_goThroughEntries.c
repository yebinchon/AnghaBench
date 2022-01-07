
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int pri_level; scalar_t__ pri_class; } ;
struct TYPE_18__ {int tv_sec; } ;
struct kinfo_proc {int ki_pid; scalar_t__ ki_jid; int ki_flag; scalar_t__ ki_ppid; scalar_t__ ki_uid; int ki_size; double ki_rssize; int ki_runtime; int ki_nice; int ki_stat; TYPE_1__ ki_pri; int ki_comm; scalar_t__ ki_pctcpu; int ki_numthreads; TYPE_2__ ki_start; int ki_pgid; int ki_tdev; int ki_sid; int ki_tpgid; } ;
struct TYPE_23__ {scalar_t__ jid; int kernel; void* jname; } ;
struct TYPE_22__ {int kd; } ;
struct TYPE_21__ {int show; int pid; scalar_t__ ppid; int tgid; scalar_t__ st_uid; int m_size; double m_resident; double percent_mem; int time; double percent_cpu; int priority; int nice; char state; int updated; int nlwp; int basenameOffset; void* comm; void* user; int starttime_ctime; int pgrp; int tty_nr; int session; int tpgid; } ;
struct TYPE_20__ {int cpuCount; int runningTasks; int totalTasks; int kernelThreads; scalar_t__ totalMem; int usersTable; TYPE_3__* settings; } ;
struct TYPE_19__ {int hideKernelThreads; int hideUserlandThreads; scalar_t__ updateProcessNames; } ;
typedef TYPE_3__ Settings ;
typedef int Process_New ;
typedef TYPE_4__ ProcessList ;
typedef TYPE_5__ Process ;
typedef TYPE_6__ FreeBSDProcessList ;
typedef TYPE_7__ FreeBSDProcess ;


 void* FreeBSDProcessList_readJailName (struct kinfo_proc*) ;
 void* FreeBSDProcessList_readProcessName (int ,struct kinfo_proc*,int *) ;
 int FreeBSDProcessList_scanCPUTime (TYPE_4__*) ;
 int FreeBSDProcessList_scanMemoryInfo (TYPE_4__*) ;
 scalar_t__ FreeBSDProcess_new ;
 int KERN_PROC_PROC ;
 int NZERO ;
 double PAGE_SIZE_KB ;
 int PRIO_MAX ;
 int PRIO_MIN ;
 scalar_t__ PRI_IS_REALTIME (scalar_t__) ;
 int PRI_MAX_REALTIME ;
 int PRI_MIN_IDLE ;
 scalar_t__ PRI_TIMESHARE ;
 int PZERO ;
 int P_SYSTEM ;
 int ProcessList_add (TYPE_4__*,TYPE_5__*) ;
 TYPE_5__* ProcessList_getProcess (TYPE_4__*,int,int*,int ) ;
 scalar_t__ Process_isKernelThread (TYPE_7__*) ;
 scalar_t__ Process_isUserlandThread (TYPE_5__*) ;







 void* UsersTable_getRef (int ,scalar_t__) ;
 int free (void*) ;
 scalar_t__ kernelFScale ;
 struct kinfo_proc* kvm_getprocs (int ,int ,int ,int*) ;
 int pageSizeKb ;
 scalar_t__ strcmp (char*,int ) ;

void ProcessList_goThroughEntries(ProcessList* this) {
   FreeBSDProcessList* fpl = (FreeBSDProcessList*) this;
   Settings* settings = this->settings;
   bool hideKernelThreads = settings->hideKernelThreads;
   bool hideUserlandThreads = settings->hideUserlandThreads;

   FreeBSDProcessList_scanMemoryInfo(this);
   FreeBSDProcessList_scanCPUTime(this);

   int cpus = this->cpuCount;
   int count = 0;
   struct kinfo_proc* kprocs = kvm_getprocs(fpl->kd, KERN_PROC_PROC, 0, &count);

   for (int i = 0; i < count; i++) {
      struct kinfo_proc* kproc = &kprocs[i];
      bool preExisting = 0;
      bool isIdleProcess = 0;
      Process* proc = ProcessList_getProcess(this, kproc->ki_pid, &preExisting, (Process_New) FreeBSDProcess_new);
      FreeBSDProcess* fp = (FreeBSDProcess*) proc;

      proc->show = ! ((hideKernelThreads && Process_isKernelThread(fp)) || (hideUserlandThreads && Process_isUserlandThread(proc)));

      if (!preExisting) {
         fp->jid = kproc->ki_jid;
         proc->pid = kproc->ki_pid;
         if ( ! ((kproc->ki_pid == 0) || (kproc->ki_pid == 1) ) && kproc->ki_flag & P_SYSTEM)
           fp->kernel = 1;
         else
           fp->kernel = 0;
         proc->ppid = kproc->ki_ppid;
         proc->tpgid = kproc->ki_tpgid;
         proc->tgid = kproc->ki_pid;
         proc->session = kproc->ki_sid;
         proc->tty_nr = kproc->ki_tdev;
         proc->pgrp = kproc->ki_pgid;
         proc->st_uid = kproc->ki_uid;
         proc->starttime_ctime = kproc->ki_start.tv_sec;
         proc->user = UsersTable_getRef(this->usersTable, proc->st_uid);
         ProcessList_add((ProcessList*)this, proc);
         proc->comm = FreeBSDProcessList_readProcessName(fpl->kd, kproc, &proc->basenameOffset);
         fp->jname = FreeBSDProcessList_readJailName(kproc);
      } else {
         if(fp->jid != kproc->ki_jid) {

            fp->jid = kproc->ki_jid;
            free(fp->jname);
            fp->jname = FreeBSDProcessList_readJailName(kproc);
         }
         if (proc->ppid != kproc->ki_ppid) {

            proc->ppid = kproc->ki_ppid;
         }
         if(proc->st_uid != kproc->ki_uid) {

            proc->st_uid = kproc->ki_uid;
            proc->user = UsersTable_getRef(this->usersTable, proc->st_uid);
         }
         if (settings->updateProcessNames) {
            free(proc->comm);
            proc->comm = FreeBSDProcessList_readProcessName(fpl->kd, kproc, &proc->basenameOffset);
         }
      }


      proc->m_size = kproc->ki_size / 1024 / pageSizeKb;
      proc->m_resident = kproc->ki_rssize;
      proc->percent_mem = (proc->m_resident * PAGE_SIZE_KB) / (double)(this->totalMem) * 100.0;
      proc->nlwp = kproc->ki_numthreads;
      proc->time = (kproc->ki_runtime + 5000) / 10000;

      proc->percent_cpu = 100.0 * ((double)kproc->ki_pctcpu / (double)kernelFScale);
      proc->percent_mem = 100.0 * (proc->m_resident * PAGE_SIZE_KB) / (double)(this->totalMem);

      if (proc->percent_cpu > 0.1) {

         if ( strcmp("idle", kproc->ki_comm) == 0 ) {
            isIdleProcess = 1;
         }
      }

      proc->priority = kproc->ki_pri.pri_level - PZERO;

      if (strcmp("intr", kproc->ki_comm) == 0 && kproc->ki_flag & P_SYSTEM) {
         proc->nice = 0;
      } else if (kproc->ki_pri.pri_class == PRI_TIMESHARE) {
         proc->nice = kproc->ki_nice - NZERO;
      } else if (PRI_IS_REALTIME(kproc->ki_pri.pri_class)) {
         proc->nice = PRIO_MIN - 1 - (PRI_MAX_REALTIME - kproc->ki_pri.pri_level);
      } else {
         proc->nice = PRIO_MAX + 1 + kproc->ki_pri.pri_level - PRI_MIN_IDLE;
      }

      switch (kproc->ki_stat) {
      case 134: proc->state = 'I'; break;
      case 132: proc->state = 'R'; break;
      case 131: proc->state = 'S'; break;
      case 130: proc->state = 'T'; break;
      case 128: proc->state = 'Z'; break;
      case 129: proc->state = 'D'; break;
      case 133: proc->state = 'L'; break;
      default: proc->state = '?';
      }

      if (Process_isKernelThread(fp)) {
         this->kernelThreads++;
      }

      this->totalTasks++;
      if (proc->state == 'R')
         this->runningTasks++;
      proc->updated = 1;
   }
}
