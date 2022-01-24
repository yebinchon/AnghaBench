#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_8__ {int m_drs; int m_dt; int m_lrs; int m_trs; int m_share; int starttime; double io_rate_read_bps; double io_rate_write_bps; int /*<<< orphan*/  swapin_delay_percent; int /*<<< orphan*/  blkio_delay_percent; int /*<<< orphan*/  cpu_delay_percent; int /*<<< orphan*/  ioPriority; int /*<<< orphan*/  oom; int /*<<< orphan*/  cgroup; int /*<<< orphan*/  vxid; int /*<<< orphan*/  vpid; int /*<<< orphan*/  ctid; int /*<<< orphan*/  io_cancelled_write_bytes; int /*<<< orphan*/  io_write_bytes; int /*<<< orphan*/  io_read_bytes; int /*<<< orphan*/  io_syscw; int /*<<< orphan*/  io_syscr; int /*<<< orphan*/  io_wchar; int /*<<< orphan*/  io_rchar; int /*<<< orphan*/  cstime; int /*<<< orphan*/  cutime; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; int /*<<< orphan*/  cmajflt; int /*<<< orphan*/  cminflt; int /*<<< orphan*/  ttyDevice; } ;
struct TYPE_7__ {int /*<<< orphan*/  nice; TYPE_1__* settings; } ;
struct TYPE_6__ {int highlightMegabytes; } ;
typedef  int /*<<< orphan*/  RichString ;
typedef  scalar_t__ ProcessField ;
typedef  TYPE_2__ Process ;
typedef  TYPE_3__ LinuxProcess ;

/* Variables and functions */
#define  CGROUP 159 
#define  CMAJFLT 158 
#define  CMINFLT 157 
#define  CNCLWB 156 
 int* CRT_colors ; 
#define  CSTIME 155 
#define  CTID 154 
#define  CUTIME 153 
 size_t DEFAULT_COLOR ; 
 int IOPRIO_CLASS_BE ; 
 int IOPRIO_CLASS_IDLE ; 
 int IOPRIO_CLASS_NONE ; 
 int IOPRIO_CLASS_RT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  IO_PRIORITY 152 
#define  IO_RATE 151 
#define  IO_READ_RATE 150 
#define  IO_WRITE_RATE 149 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
#define  M_DRS 148 
#define  M_DT 147 
#define  M_LRS 146 
#define  M_SHARE 145 
#define  M_TRS 144 
#define  OOM 143 
 int PAGE_SIZE_KB ; 
#define  PERCENT_CPU_DELAY 142 
#define  PERCENT_IO_DELAY 141 
#define  PERCENT_SWAP_DELAY 140 
 size_t PROCESS_HIGH_PRIORITY ; 
 size_t PROCESS_LOW_PRIORITY ; 
 size_t PROCESS_SHADOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,double,int) ; 
 int /*<<< orphan*/  Process_pidFormat ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
#define  RBYTES 139 
#define  RCHAR 138 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
#define  STARTTIME 137 
#define  STIME 136 
#define  SYSCR 135 
#define  SYSCW 134 
#define  TTY_NR 133 
#define  UTIME 132 
#define  VPID 131 
#define  VXID 130 
#define  WBYTES 129 
#define  WCHAR 128 
 int /*<<< orphan*/  _SC_CLK_TCK ; 
 int btime ; 
 int /*<<< orphan*/  FUNC9 (int*,struct tm*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,struct tm*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,...) ; 

void FUNC14(Process* this, RichString* str, ProcessField field) {
   LinuxProcess* lp = (LinuxProcess*) this;
   bool coloring = this->settings->highlightMegabytes;
   char buffer[256]; buffer[255] = '\0';
   int attr = CRT_colors[DEFAULT_COLOR];
   int n = sizeof(buffer) - 1;
   switch ((int)field) {
   case TTY_NR: {
      if (lp->ttyDevice) {
         FUNC13(buffer, n, "%-9s", lp->ttyDevice + 5 /* skip "/dev/" */);
      } else {
         attr = CRT_colors[PROCESS_SHADOW];
         FUNC13(buffer, n, "?        ");
      }
      break;
   }
   case CMINFLT: FUNC3(str, lp->cminflt, coloring); return;
   case CMAJFLT: FUNC3(str, lp->cmajflt, coloring); return;
   case M_DRS: FUNC4(str, lp->m_drs * PAGE_SIZE_KB, coloring); return;
   case M_DT: FUNC4(str, lp->m_dt * PAGE_SIZE_KB, coloring); return;
   case M_LRS: FUNC4(str, lp->m_lrs * PAGE_SIZE_KB, coloring); return;
   case M_TRS: FUNC4(str, lp->m_trs * PAGE_SIZE_KB, coloring); return;
   case M_SHARE: FUNC4(str, lp->m_share * PAGE_SIZE_KB, coloring); return;
   case UTIME: FUNC6(str, lp->utime); return;
   case STIME: FUNC6(str, lp->stime); return;
   case CUTIME: FUNC6(str, lp->cutime); return;
   case CSTIME: FUNC6(str, lp->cstime); return;
   case STARTTIME: {
     struct tm date;
     time_t starttimewall = btime + (lp->starttime / FUNC11(_SC_CLK_TCK));
     (void) FUNC9(&starttimewall, &date);
     FUNC10(buffer, n, ((starttimewall > FUNC12(NULL) - 86400) ? "%R " : "%b%d "), &date);
     break;
   }
   #ifdef HAVE_TASKSTATS
   case RCHAR:  Process_colorNumber(str, lp->io_rchar, coloring); return;
   case WCHAR:  Process_colorNumber(str, lp->io_wchar, coloring); return;
   case SYSCR:  Process_colorNumber(str, lp->io_syscr, coloring); return;
   case SYSCW:  Process_colorNumber(str, lp->io_syscw, coloring); return;
   case RBYTES: Process_colorNumber(str, lp->io_read_bytes, coloring); return;
   case WBYTES: Process_colorNumber(str, lp->io_write_bytes, coloring); return;
   case CNCLWB: Process_colorNumber(str, lp->io_cancelled_write_bytes, coloring); return;
   case IO_READ_RATE:  Process_outputRate(str, buffer, n, lp->io_rate_read_bps, coloring); return;
   case IO_WRITE_RATE: Process_outputRate(str, buffer, n, lp->io_rate_write_bps, coloring); return;
   case IO_RATE: {
      double totalRate = (lp->io_rate_read_bps != -1)
                       ? (lp->io_rate_read_bps + lp->io_rate_write_bps)
                       : -1;
      Process_outputRate(str, buffer, n, totalRate, coloring); return;
   }
   #endif
   #ifdef HAVE_OPENVZ
   case CTID: xSnprintf(buffer, n, "%7u ", lp->ctid); break;
   case VPID: xSnprintf(buffer, n, Process_pidFormat, lp->vpid); break;
   #endif
   #ifdef HAVE_VSERVER
   case VXID: xSnprintf(buffer, n, "%5u ", lp->vxid); break;
   #endif
   #ifdef HAVE_CGROUP
   case CGROUP: xSnprintf(buffer, n, "%-10s ", lp->cgroup); break;
   #endif
   case OOM: FUNC13(buffer, n, Process_pidFormat, lp->oom); break;
   case IO_PRIORITY: {
      int klass = FUNC0(lp->ioPriority);
      if (klass == IOPRIO_CLASS_NONE) {
         // see note [1] above
         FUNC13(buffer, n, "B%1d ", (int) (this->nice + 20) / 5);
      } else if (klass == IOPRIO_CLASS_BE) {
         FUNC13(buffer, n, "B%1d ", FUNC1(lp->ioPriority));
      } else if (klass == IOPRIO_CLASS_RT) {
         attr = CRT_colors[PROCESS_HIGH_PRIORITY];
         FUNC13(buffer, n, "R%1d ", FUNC1(lp->ioPriority));
      } else if (klass == IOPRIO_CLASS_IDLE) {
         attr = CRT_colors[PROCESS_LOW_PRIORITY]; 
         FUNC13(buffer, n, "id ");
      } else {
         FUNC13(buffer, n, "?? ");
      }
      break;
   }
   #ifdef HAVE_DELAYACCT
   case PERCENT_CPU_DELAY: LinuxProcess_printDelay(lp->cpu_delay_percent, buffer, n); break;
   case PERCENT_IO_DELAY: LinuxProcess_printDelay(lp->blkio_delay_percent, buffer, n); break;
   case PERCENT_SWAP_DELAY: LinuxProcess_printDelay(lp->swapin_delay_percent, buffer, n); break;
   #endif
   default:
      FUNC7((Process*)this, str, field);
      return;
   }
   FUNC8(str, attr, buffer);
}