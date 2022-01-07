
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {int tv_sec; } ;
struct extern_proc {TYPE_1__ p_starttime; } ;
struct TYPE_5__ {int starttime_ctime; int starttime_show; } ;
typedef TYPE_2__ Process ;


 int localtime_r (int*,struct tm*) ;
 int strftime (int ,int,char*,struct tm*) ;

void DarwinProcess_setStartTime(Process *proc, struct extern_proc *ep, time_t now) {
   struct tm date;

   proc->starttime_ctime = ep->p_starttime.tv_sec;
   (void) localtime_r(&proc->starttime_ctime, &date);
   strftime(proc->starttime_show, 7, ((proc->starttime_ctime > now - 86400) ? "%R " : "%b%d "), &date);
}
