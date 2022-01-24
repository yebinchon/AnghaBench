#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_4__ {void* m_resident; void* m_size; } ;
struct TYPE_5__ {void* m_dt; void* m_drs; void* m_lrs; void* m_trs; void* m_share; TYPE_1__ super; } ;
typedef  TYPE_2__ LinuxProcess ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_NAME ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROC_LINE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int FUNC4 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(LinuxProcess* process, const char* dirname, const char* name) {
   char filename[MAX_NAME+1];
   FUNC3(filename, MAX_NAME, "%s/%s/statm", dirname, name);
   int fd = FUNC1(filename, O_RDONLY);
   if (fd == -1)
      return false;
   char buf[PROC_LINE_LENGTH + 1];
   ssize_t rres = FUNC4(fd, buf, PROC_LINE_LENGTH);
   FUNC0(fd);
   if (rres < 1) return false;

   char *p = buf;
   errno = 0;
   process->super.m_size = FUNC2(p, &p, 10); if (*p == ' ') p++;
   process->super.m_resident = FUNC2(p, &p, 10); if (*p == ' ') p++;
   process->m_share = FUNC2(p, &p, 10); if (*p == ' ') p++;
   process->m_trs = FUNC2(p, &p, 10); if (*p == ' ') p++;
   process->m_lrs = FUNC2(p, &p, 10); if (*p == ' ') p++;
   process->m_drs = FUNC2(p, &p, 10); if (*p == ' ') p++;
   process->m_dt = FUNC2(p, &p, 10);
   return (errno == 0);
}