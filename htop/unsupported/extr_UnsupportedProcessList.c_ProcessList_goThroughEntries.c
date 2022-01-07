
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pid; int ppid; char* comm; int updated; char state; int show; double percent_cpu; double percent_mem; char* user; int nlwp; int starttime_ctime; int m_size; int m_resident; int minflt; int majflt; int starttime_show; scalar_t__ nice; scalar_t__ priority; scalar_t__ processor; scalar_t__ flags; scalar_t__ st_uid; scalar_t__ tpgid; scalar_t__ tty_nr; scalar_t__ session; scalar_t__ pgrp; scalar_t__ basenameOffset; scalar_t__ tgid; scalar_t__ time; } ;
typedef int ProcessList ;
typedef TYPE_1__ Process ;


 TYPE_1__* ProcessList_getProcess (int *,int,int*,int ) ;
 int UnsupportedProcess_new ;
 int strncpy (int ,char*,int) ;

void ProcessList_goThroughEntries(ProcessList* super) {
 bool preExisting = 1;
    Process *proc;

    proc = ProcessList_getProcess(super, 1, &preExisting, UnsupportedProcess_new);


    proc->time = proc->time + 10;
    proc->pid = 1;
    proc->ppid = 1;
    proc->tgid = 0;
    proc->comm = "<unsupported architecture>";
    proc->basenameOffset = 0;
    proc->updated = 1;

    proc->state = 'R';
    proc->show = 1;
    proc->pgrp = 0;
    proc->session = 0;
    proc->tty_nr = 0;
    proc->tpgid = 0;
    proc->st_uid = 0;
    proc->flags = 0;
    proc->processor = 0;

    proc->percent_cpu = 2.5;
    proc->percent_mem = 2.5;
    proc->user = "nobody";

    proc->priority = 0;
    proc->nice = 0;
    proc->nlwp = 1;
    strncpy(proc->starttime_show, "Jun 01 ", sizeof(proc->starttime_show));
    proc->starttime_ctime = 1433116800;

    proc->m_size = 100;
    proc->m_resident = 100;

    proc->minflt = 20;
    proc->majflt = 20;
}
