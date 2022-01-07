
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {long pid; } ;
struct TYPE_9__ {long m_drs; long m_dt; long m_lrs; long m_trs; long m_share; long long utime; long long cutime; long long stime; long long cstime; long starttime; long long io_rchar; long long io_wchar; long long io_syscr; long long io_syscw; long long io_read_bytes; long long io_write_bytes; long long io_cancelled_write_bytes; long long io_rate_read_bps; long long io_rate_write_bps; long ctid; long vpid; long vxid; char* cgroup; long oom; int swapin_delay_percent; int blkio_delay_percent; int cpu_delay_percent; TYPE_1__ super; } ;
struct TYPE_8__ {TYPE_2__* settings; } ;
struct TYPE_7__ {int direction; scalar_t__ sortKey; } ;
typedef TYPE_2__ Settings ;
typedef TYPE_3__ Process ;
typedef TYPE_4__ LinuxProcess ;
 long LinuxProcess_effectiveIOPriority (TYPE_4__*) ;
 long Process_compare (void const*,void const*) ;
 long strcmp (char*,char*) ;

long LinuxProcess_compare(const void* v1, const void* v2) {
   LinuxProcess *p1, *p2;
   Settings *settings = ((Process*)v1)->settings;
   if (settings->direction == 1) {
      p1 = (LinuxProcess*)v1;
      p2 = (LinuxProcess*)v2;
   } else {
      p2 = (LinuxProcess*)v1;
      p1 = (LinuxProcess*)v2;
   }
   long long diff;
   switch ((int)settings->sortKey) {
   case 147:
      return (p2->m_drs - p1->m_drs);
   case 146:
      return (p2->m_dt - p1->m_dt);
   case 145:
      return (p2->m_lrs - p1->m_lrs);
   case 143:
      return (p2->m_trs - p1->m_trs);
   case 144:
      return (p2->m_share - p1->m_share);
   case 132: diff = p2->utime - p1->utime; goto test_diff;
   case 152: diff = p2->cutime - p1->cutime; goto test_diff;
   case 135: diff = p2->stime - p1->stime; goto test_diff;
   case 154: diff = p2->cstime - p1->cstime; goto test_diff;
   case 136: {
      if (p1->starttime == p2->starttime)
         return (p1->super.pid - p2->super.pid);
      else
         return (p1->starttime - p2->starttime);
   }
   case 142:
      return (p2->oom - p1->oom);
   case 151:
      return LinuxProcess_effectiveIOPriority(p1) - LinuxProcess_effectiveIOPriority(p2);
   default:
      return Process_compare(v1, v2);
   }
   test_diff:
   return (diff > 0) ? 1 : (diff < 0 ? -1 : 0);
}
