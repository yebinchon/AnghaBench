
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
struct timeval {int tv_sec; } ;
struct kinfo_proc {int p_ustart_sec; double p_vm_rssize; int p_rtime_sec; int p_rtime_usec; int p_stat; scalar_t__ p_priority; scalar_t__ p_nice; int p_vm_dsize; int p_uid; int p__pgid; int p_tdev; int p_sid; int p_pid; int p_tpgid; int p_ppid; } ;
struct TYPE_16__ {int kd; } ;
struct TYPE_15__ {int show; int starttime_ctime; double m_resident; double percent_mem; int time; char state; int updated; scalar_t__ priority; scalar_t__ nice; int percent_cpu; int m_size; int basenameOffset; void* comm; int starttime_show; int st_uid; int user; int pgrp; int tty_nr; int session; int tgid; int tpgid; int ppid; } ;
struct TYPE_14__ {double cpuCount; int runningTasks; int totalTasks; int kernelThreads; scalar_t__ totalMem; int usersTable; TYPE_1__* settings; } ;
struct TYPE_13__ {int hideKernelThreads; int hideUserlandThreads; scalar_t__ updateProcessNames; } ;
typedef TYPE_1__ Settings ;
typedef int Process_New ;
typedef TYPE_2__ ProcessList ;
typedef TYPE_3__ Process ;
typedef TYPE_4__ OpenBSDProcessList ;
typedef int OpenBSDProcess ;


 int CLAMP (int ,double,double) ;
 int KERN_PROC_ALL ;
 void* OpenBSDProcessList_readProcessName (int ,struct kinfo_proc*,int *) ;
 int OpenBSDProcessList_scanMemoryInfo (TYPE_2__*) ;
 scalar_t__ OpenBSDProcess_new ;
 double PAGE_SIZE_KB ;
 scalar_t__ PZERO ;
 int ProcessList_add (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* ProcessList_getProcess (TYPE_2__*,int ,int*,int ) ;
 scalar_t__ Process_isKernelThread (TYPE_3__*) ;
 scalar_t__ Process_isUserlandThread (TYPE_3__*) ;







 int UsersTable_getRef (int ,int ) ;
 int free (void*) ;
 int getpcpu (struct kinfo_proc*) ;
 int gettimeofday (struct timeval*,int *) ;
 struct kinfo_proc* kvm_getprocs (int ,int ,int ,int,int*) ;
 int localtime_r (int *,struct tm*) ;
 int strftime (int ,int,char*,struct tm*) ;

void ProcessList_goThroughEntries(ProcessList* this) {
   OpenBSDProcessList* opl = (OpenBSDProcessList*) this;
   Settings* settings = this->settings;
   bool hideKernelThreads = settings->hideKernelThreads;
   bool hideUserlandThreads = settings->hideUserlandThreads;
   struct kinfo_proc* kproc;
   bool preExisting;
   Process* proc;
   OpenBSDProcess* fp;
   struct tm date;
   struct timeval tv;
   int count = 0;
   int i;

   OpenBSDProcessList_scanMemoryInfo(this);


   struct kinfo_proc* kprocs = kvm_getprocs(opl->kd, KERN_PROC_ALL, 0, sizeof(struct kinfo_proc), &count);


   gettimeofday(&tv, ((void*)0));

   for (i = 0; i < count; i++) {
      kproc = &kprocs[i];

      preExisting = 0;
      proc = ProcessList_getProcess(this, kproc->p_pid, &preExisting, (Process_New) OpenBSDProcess_new);
      fp = (OpenBSDProcess*) proc;

      proc->show = ! ((hideKernelThreads && Process_isKernelThread(proc))
                  || (hideUserlandThreads && Process_isUserlandThread(proc)));

      if (!preExisting) {
         proc->ppid = kproc->p_ppid;
         proc->tpgid = kproc->p_tpgid;
         proc->tgid = kproc->p_pid;
         proc->session = kproc->p_sid;
         proc->tty_nr = kproc->p_tdev;
         proc->pgrp = kproc->p__pgid;
         proc->st_uid = kproc->p_uid;
         proc->starttime_ctime = kproc->p_ustart_sec;
         proc->user = UsersTable_getRef(this->usersTable, proc->st_uid);
         ProcessList_add((ProcessList*)this, proc);
         proc->comm = OpenBSDProcessList_readProcessName(opl->kd, kproc, &proc->basenameOffset);
         (void) localtime_r((time_t*) &kproc->p_ustart_sec, &date);
         strftime(proc->starttime_show, 7, ((proc->starttime_ctime > tv.tv_sec - 86400) ? "%R " : "%b%d "), &date);
      } else {
         if (settings->updateProcessNames) {
            free(proc->comm);
            proc->comm = OpenBSDProcessList_readProcessName(opl->kd, kproc, &proc->basenameOffset);
         }
      }

      proc->m_size = kproc->p_vm_dsize;
      proc->m_resident = kproc->p_vm_rssize;
      proc->percent_mem = (proc->m_resident * PAGE_SIZE_KB) / (double)(this->totalMem) * 100.0;
      proc->percent_cpu = CLAMP(getpcpu(kproc), 0.0, this->cpuCount*100.0);


      proc->nice = kproc->p_nice - 20;
      proc->time = kproc->p_rtime_sec + ((kproc->p_rtime_usec + 500000) / 1000000);
      proc->time *= 100;
      proc->priority = kproc->p_priority - PZERO;

      switch (kproc->p_stat) {
         case 133: proc->state = 'I'; break;
         case 131: proc->state = 'R'; break;
         case 130: proc->state = 'S'; break;
         case 129: proc->state = 'T'; break;
         case 128: proc->state = 'Z'; break;
         case 134: proc->state = 'D'; break;
         case 132: proc->state = 'P'; break;
         default: proc->state = '?';
      }

      if (Process_isKernelThread(proc)) {
         this->kernelThreads++;
      }

      this->totalTasks++;

      if (proc->state == 'P') {
         this->runningTasks++;
      }
      proc->updated = 1;
   }
}
