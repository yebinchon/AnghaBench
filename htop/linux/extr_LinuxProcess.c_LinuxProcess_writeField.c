
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
typedef int buffer ;
struct TYPE_8__ {int m_drs; int m_dt; int m_lrs; int m_trs; int m_share; int starttime; double io_rate_read_bps; double io_rate_write_bps; int swapin_delay_percent; int blkio_delay_percent; int cpu_delay_percent; int ioPriority; int oom; int cgroup; int vxid; int vpid; int ctid; int io_cancelled_write_bytes; int io_write_bytes; int io_read_bytes; int io_syscw; int io_syscr; int io_wchar; int io_rchar; int cstime; int cutime; int stime; int utime; int cmajflt; int cminflt; int ttyDevice; } ;
struct TYPE_7__ {int nice; TYPE_1__* settings; } ;
struct TYPE_6__ {int highlightMegabytes; } ;
typedef int RichString ;
typedef scalar_t__ ProcessField ;
typedef TYPE_2__ Process ;
typedef TYPE_3__ LinuxProcess ;






 int* CRT_colors ;



 size_t DEFAULT_COLOR ;
 int IOPRIO_CLASS_BE ;
 int IOPRIO_CLASS_IDLE ;
 int IOPRIO_CLASS_NONE ;
 int IOPRIO_CLASS_RT ;
 int IOPriority_class (int ) ;
 int IOPriority_data (int ) ;




 int LinuxProcess_printDelay (int ,char*,int) ;






 int PAGE_SIZE_KB ;



 size_t PROCESS_HIGH_PRIORITY ;
 size_t PROCESS_LOW_PRIORITY ;
 size_t PROCESS_SHADOW ;
 int Process_colorNumber (int *,int ,int) ;
 int Process_humanNumber (int *,int,int) ;
 int Process_outputRate (int *,char*,int,double,int) ;
 int Process_pidFormat ;
 int Process_printTime (int *,int ) ;
 int Process_writeField (TYPE_2__*,int *,scalar_t__) ;


 int RichString_append (int *,int,char*) ;
 int _SC_CLK_TCK ;
 int btime ;
 int localtime_r (int*,struct tm*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int sysconf (int ) ;
 int time (int *) ;
 int xSnprintf (char*,int,char*,...) ;

void LinuxProcess_writeField(Process* this, RichString* str, ProcessField field) {
   LinuxProcess* lp = (LinuxProcess*) this;
   bool coloring = this->settings->highlightMegabytes;
   char buffer[256]; buffer[255] = '\0';
   int attr = CRT_colors[DEFAULT_COLOR];
   int n = sizeof(buffer) - 1;
   switch ((int)field) {
   case 133: {
      if (lp->ttyDevice) {
         xSnprintf(buffer, n, "%-9s", lp->ttyDevice + 5 );
      } else {
         attr = CRT_colors[PROCESS_SHADOW];
         xSnprintf(buffer, n, "?        ");
      }
      break;
   }
   case 157: Process_colorNumber(str, lp->cminflt, coloring); return;
   case 158: Process_colorNumber(str, lp->cmajflt, coloring); return;
   case 148: Process_humanNumber(str, lp->m_drs * PAGE_SIZE_KB, coloring); return;
   case 147: Process_humanNumber(str, lp->m_dt * PAGE_SIZE_KB, coloring); return;
   case 146: Process_humanNumber(str, lp->m_lrs * PAGE_SIZE_KB, coloring); return;
   case 144: Process_humanNumber(str, lp->m_trs * PAGE_SIZE_KB, coloring); return;
   case 145: Process_humanNumber(str, lp->m_share * PAGE_SIZE_KB, coloring); return;
   case 132: Process_printTime(str, lp->utime); return;
   case 136: Process_printTime(str, lp->stime); return;
   case 153: Process_printTime(str, lp->cutime); return;
   case 155: Process_printTime(str, lp->cstime); return;
   case 137: {
     struct tm date;
     time_t starttimewall = btime + (lp->starttime / sysconf(_SC_CLK_TCK));
     (void) localtime_r(&starttimewall, &date);
     strftime(buffer, n, ((starttimewall > time(((void*)0)) - 86400) ? "%R " : "%b%d "), &date);
     break;
   }
   case 143: xSnprintf(buffer, n, Process_pidFormat, lp->oom); break;
   case 152: {
      int klass = IOPriority_class(lp->ioPriority);
      if (klass == IOPRIO_CLASS_NONE) {

         xSnprintf(buffer, n, "B%1d ", (int) (this->nice + 20) / 5);
      } else if (klass == IOPRIO_CLASS_BE) {
         xSnprintf(buffer, n, "B%1d ", IOPriority_data(lp->ioPriority));
      } else if (klass == IOPRIO_CLASS_RT) {
         attr = CRT_colors[PROCESS_HIGH_PRIORITY];
         xSnprintf(buffer, n, "R%1d ", IOPriority_data(lp->ioPriority));
      } else if (klass == IOPRIO_CLASS_IDLE) {
         attr = CRT_colors[PROCESS_LOW_PRIORITY];
         xSnprintf(buffer, n, "id ");
      } else {
         xSnprintf(buffer, n, "?? ");
      }
      break;
   }





   default:
      Process_writeField((Process*)this, str, field);
      return;
   }
   RichString_append(str, attr, buffer);
}
