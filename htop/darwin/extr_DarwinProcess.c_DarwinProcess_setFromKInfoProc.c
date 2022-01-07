
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_6__ {int cr_uid; } ;
struct TYPE_7__ {int e_tdev; TYPE_1__ e_ucred; int e_tpgid; int e_pgid; int e_ppid; } ;
struct extern_proc {scalar_t__ p_stat; int p_priority; int p_nice; int p_pid; } ;
struct kinfo_proc {TYPE_2__ kp_eproc; struct extern_proc kp_proc; } ;
struct TYPE_8__ {int tty_nr; char state; int updated; int priority; int nice; int basenameOffset; int comm; int st_uid; int pid; int tgid; int tpgid; scalar_t__ session; int pgrp; int ppid; } ;
typedef TYPE_3__ Process ;


 int DarwinProcess_getCmdLine (struct kinfo_proc*,int *) ;
 int DarwinProcess_setStartTime (TYPE_3__*,struct extern_proc*,int ) ;
 scalar_t__ SZOMB ;

void DarwinProcess_setFromKInfoProc(Process *proc, struct kinfo_proc *ps, time_t now, bool exists) {
   struct extern_proc *ep = &ps->kp_proc;
   if(!exists) {

      proc->pid = ep->p_pid;
      proc->ppid = ps->kp_eproc.e_ppid;
      proc->pgrp = ps->kp_eproc.e_pgid;
      proc->session = 0;
      proc->tpgid = ps->kp_eproc.e_tpgid;
      proc->tgid = proc->pid;
      proc->st_uid = ps->kp_eproc.e_ucred.cr_uid;


      proc->tty_nr = ps->kp_eproc.e_tdev & 0xff;

      DarwinProcess_setStartTime(proc, ep, now);
      proc->comm = DarwinProcess_getCmdLine(ps, &(proc->basenameOffset));
   }


   proc->nice = ep->p_nice;
   proc->priority = ep->p_priority;

   proc->state = (ep->p_stat == SZOMB) ? 'Z' : '?';


   proc->updated = 1;
}
