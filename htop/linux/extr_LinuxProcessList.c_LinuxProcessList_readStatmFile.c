
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_4__ {void* m_resident; void* m_size; } ;
struct TYPE_5__ {void* m_dt; void* m_drs; void* m_lrs; void* m_trs; void* m_share; TYPE_1__ super; } ;
typedef TYPE_2__ LinuxProcess ;


 int MAX_NAME ;
 int O_RDONLY ;
 int PROC_LINE_LENGTH ;
 int close (int) ;
 scalar_t__ errno ;
 int open (char*,int ) ;
 void* strtol (char*,char**,int) ;
 int xSnprintf (char*,int ,char*,char const*,char const*) ;
 int xread (int,char*,int ) ;

__attribute__((used)) static bool LinuxProcessList_readStatmFile(LinuxProcess* process, const char* dirname, const char* name) {
   char filename[MAX_NAME+1];
   xSnprintf(filename, MAX_NAME, "%s/%s/statm", dirname, name);
   int fd = open(filename, O_RDONLY);
   if (fd == -1)
      return 0;
   char buf[PROC_LINE_LENGTH + 1];
   ssize_t rres = xread(fd, buf, PROC_LINE_LENGTH);
   close(fd);
   if (rres < 1) return 0;

   char *p = buf;
   errno = 0;
   process->super.m_size = strtol(p, &p, 10); if (*p == ' ') p++;
   process->super.m_resident = strtol(p, &p, 10); if (*p == ' ') p++;
   process->m_share = strtol(p, &p, 10); if (*p == ' ') p++;
   process->m_trs = strtol(p, &p, 10); if (*p == ' ') p++;
   process->m_lrs = strtol(p, &p, 10); if (*p == ' ') p++;
   process->m_drs = strtol(p, &p, 10); if (*p == ' ') p++;
   process->m_dt = strtol(p, &p, 10);
   return (errno == 0);
}
