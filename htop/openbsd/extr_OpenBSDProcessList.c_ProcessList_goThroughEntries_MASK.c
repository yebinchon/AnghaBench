#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct timeval {int tv_sec; } ;
struct kinfo_proc {int p_ustart_sec; double p_vm_rssize; int p_rtime_sec; int p_rtime_usec; int p_stat; scalar_t__ p_priority; scalar_t__ p_nice; int /*<<< orphan*/  p_vm_dsize; int /*<<< orphan*/  p_uid; int /*<<< orphan*/  p__pgid; int /*<<< orphan*/  p_tdev; int /*<<< orphan*/  p_sid; int /*<<< orphan*/  p_pid; int /*<<< orphan*/  p_tpgid; int /*<<< orphan*/  p_ppid; } ;
struct TYPE_16__ {int /*<<< orphan*/  kd; } ;
struct TYPE_15__ {int show; int starttime_ctime; double m_resident; double percent_mem; int time; char state; int updated; scalar_t__ priority; scalar_t__ nice; int /*<<< orphan*/  percent_cpu; int /*<<< orphan*/  m_size; int /*<<< orphan*/  basenameOffset; void* comm; int /*<<< orphan*/  starttime_show; int /*<<< orphan*/  st_uid; int /*<<< orphan*/  user; int /*<<< orphan*/  pgrp; int /*<<< orphan*/  tty_nr; int /*<<< orphan*/  session; int /*<<< orphan*/  tgid; int /*<<< orphan*/  tpgid; int /*<<< orphan*/  ppid; } ;
struct TYPE_14__ {double cpuCount; int /*<<< orphan*/  runningTasks; int /*<<< orphan*/  totalTasks; int /*<<< orphan*/  kernelThreads; scalar_t__ totalMem; int /*<<< orphan*/  usersTable; TYPE_1__* settings; } ;
struct TYPE_13__ {int hideKernelThreads; int hideUserlandThreads; scalar_t__ updateProcessNames; } ;
typedef  TYPE_1__ Settings ;
typedef  int /*<<< orphan*/  Process_New ;
typedef  TYPE_2__ ProcessList ;
typedef  TYPE_3__ Process ;
typedef  TYPE_4__ OpenBSDProcessList ;
typedef  int /*<<< orphan*/  OpenBSDProcess ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  KERN_PROC_ALL ; 
 void* FUNC1 (int /*<<< orphan*/ ,struct kinfo_proc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ OpenBSDProcess_new ; 
 double PAGE_SIZE_KB ; 
 scalar_t__ PZERO ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
#define  SDEAD 134 
#define  SIDL 133 
#define  SONPROC 132 
#define  SRUN 131 
#define  SSLEEP 130 
#define  SSTOP 129 
#define  SZOMB 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC10 (struct timeval*,int /*<<< orphan*/ *) ; 
 struct kinfo_proc* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,struct tm*) ; 

void FUNC14(ProcessList* this) {
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

   FUNC2(this);

   // use KERN_PROC_KTHREAD to also include kernel threads
   struct kinfo_proc* kprocs = FUNC11(opl->kd, KERN_PROC_ALL, 0, sizeof(struct kinfo_proc), &count);
   //struct kinfo_proc* kprocs = getprocs(KERN_PROC_ALL, 0, &count);

   FUNC10(&tv, NULL);

   for (i = 0; i < count; i++) {
      kproc = &kprocs[i];

      preExisting = false;
      proc = FUNC4(this, kproc->p_pid, &preExisting, (Process_New) OpenBSDProcess_new);
      fp = (OpenBSDProcess*) proc;

      proc->show = ! ((hideKernelThreads && FUNC5(proc))
                  || (hideUserlandThreads && FUNC6(proc)));

      if (!preExisting) {
         proc->ppid = kproc->p_ppid;
         proc->tpgid = kproc->p_tpgid;
         proc->tgid = kproc->p_pid;
         proc->session = kproc->p_sid;
         proc->tty_nr = kproc->p_tdev;
         proc->pgrp = kproc->p__pgid;
         proc->st_uid = kproc->p_uid;
         proc->starttime_ctime = kproc->p_ustart_sec;
         proc->user = FUNC7(this->usersTable, proc->st_uid);
         FUNC3((ProcessList*)this, proc);
         proc->comm = FUNC1(opl->kd, kproc, &proc->basenameOffset);
         (void) FUNC12((time_t*) &kproc->p_ustart_sec, &date);
         FUNC13(proc->starttime_show, 7, ((proc->starttime_ctime > tv.tv_sec - 86400) ? "%R " : "%b%d "), &date);
      } else {
         if (settings->updateProcessNames) {
            FUNC8(proc->comm);
            proc->comm = FUNC1(opl->kd, kproc, &proc->basenameOffset);
         }
      }

      proc->m_size = kproc->p_vm_dsize;
      proc->m_resident = kproc->p_vm_rssize;
      proc->percent_mem = (proc->m_resident * PAGE_SIZE_KB) / (double)(this->totalMem) * 100.0;
      proc->percent_cpu = FUNC0(FUNC9(kproc), 0.0, this->cpuCount*100.0);
      //proc->nlwp = kproc->p_numthreads;
      //proc->time = kproc->p_rtime_sec + ((kproc->p_rtime_usec + 500000) / 10);
      proc->nice = kproc->p_nice - 20;
      proc->time = kproc->p_rtime_sec + ((kproc->p_rtime_usec + 500000) / 1000000);
      proc->time *= 100;
      proc->priority = kproc->p_priority - PZERO;

      switch (kproc->p_stat) {
         case SIDL:    proc->state = 'I'; break;
         case SRUN:    proc->state = 'R'; break;
         case SSLEEP:  proc->state = 'S'; break;
         case SSTOP:   proc->state = 'T'; break;
         case SZOMB:   proc->state = 'Z'; break;
         case SDEAD:   proc->state = 'D'; break;
         case SONPROC: proc->state = 'P'; break;
         default:      proc->state = '?';
      }

      if (FUNC5(proc)) {
         this->kernelThreads++;
      }

      this->totalTasks++;
      // SRUN ('R') means runnable, not running
      if (proc->state == 'P') {
         this->runningTasks++;
      }
      proc->updated = true;
   }
}