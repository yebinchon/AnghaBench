
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {long m_resident; char* comm; long majflt; long minflt; long m_size; long nice; long nlwp; long pgrp; long pid; long ppid; long priority; long processor; long session; long starttime_ctime; long st_uid; long time; long tgid; long tpgid; long tty_nr; char* user; int state; int percent_cpu; TYPE_1__* settings; } ;
struct TYPE_3__ {int direction; int sortKey; } ;
typedef TYPE_1__ Settings ;
typedef TYPE_2__ Process ;
 long Process_sortState (int ) ;
 long strcmp (char*,char*) ;

long Process_compare(const void* v1, const void* v2) {
   Process *p1, *p2;
   Settings *settings = ((Process*)v1)->settings;
   if (settings->direction == 1) {
      p1 = (Process*)v1;
      p2 = (Process*)v2;
   } else {
      p2 = (Process*)v1;
      p1 = (Process*)v2;
   }
   switch (settings->sortKey) {
   case 143:
      return (p2->percent_cpu > p1->percent_cpu ? 1 : -1);
   case 142:
      return (p2->m_resident - p1->m_resident);
   case 150:
      return strcmp(p1->comm, p2->comm);
   case 149:
      return (p2->majflt - p1->majflt);
   case 148:
      return (p2->minflt - p1->minflt);
   case 147:
      return (p2->m_resident - p1->m_resident);
   case 146:
      return (p2->m_size - p1->m_size);
   case 145:
      return (p1->nice - p2->nice);
   case 144:
      return (p1->nlwp - p2->nlwp);
   case 141:
      return (p1->pgrp - p2->pgrp);
   case 140:
      return (p1->pid - p2->pid);
   case 139:
      return (p1->ppid - p2->ppid);
   case 138:
      return (p1->priority - p2->priority);
   case 137:
      return (p1->processor - p2->processor);
   case 136:
      return (p1->session - p2->session);
   case 135: {
      if (p1->starttime_ctime == p2->starttime_ctime)
         return (p1->pid - p2->pid);
      else
         return (p1->starttime_ctime - p2->starttime_ctime);
   }
   case 134:
      return (Process_sortState(p1->state) - Process_sortState(p2->state));
   case 133:
      return (p1->st_uid - p2->st_uid);
   case 131:
      return ((p2->time) - (p1->time));
   case 132:
      return (p1->tgid - p2->tgid);
   case 130:
      return (p1->tpgid - p2->tpgid);
   case 129:
      return (p1->tty_nr - p2->tty_nr);
   case 128:
      return strcmp(p1->user ? p1->user : "", p2->user ? p2->user : "");
   default:
      return (p1->pid - p2->pid);
   }
}
