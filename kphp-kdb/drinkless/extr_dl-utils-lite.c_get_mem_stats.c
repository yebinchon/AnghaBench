
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_3__ {unsigned long long vm_peak; unsigned long long vm; unsigned long long rss_peak; unsigned long long rss; } ;
typedef TYPE_1__ mem_info_t ;


 int O_RDONLY ;
 int TMEM_SIZE ;
 int close (int) ;
 int open (char*,int ) ;
 scalar_t__ read (int,char*,int) ;
 int snprintf (char*,int,char*,unsigned long) ;
 int sscanf (char*,char*,unsigned long long*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int get_mem_stats (pid_t pid, mem_info_t *info) {

  static char mem[10000];
  snprintf (mem, 10000, "/proc/%lu/status", (unsigned long)pid);
  int fd = open (mem, O_RDONLY);

  if (fd == -1) {
    return 0;
  }

  int size = (int)read (fd, mem, 10000 - 1);
  if (size <= 0) {
    close (fd);
    return 0;
  }
  mem[size] = 0;

  char *s = mem;
  while (*s) {
    char *st = s;
    while (*s != 0 && *s != '\n') {
      s++;
    }
    unsigned long long *x = ((void*)0);
    if (strncmp (st, "VmPeak", 6) == 0) {
      x = &info->vm_peak;
    }
    if (strncmp (st, "VmSize", 6) == 0) {
      x = &info->vm;
    }
    if (strncmp (st, "VmHWM", 5) == 0) {
      x = &info->rss_peak;
    }
    if (strncmp (st, "VmRSS", 5) == 0) {
      x = &info->rss;
    }
    if (x != ((void*)0)) {
      while (st < s && *st != ' ') {
        st++;
      }
      *x = (unsigned long long)-1;

      if (st < s) {
        sscanf (st, "%llu", x);
      }
    }
    if (*s == 0) {
      break;
    }
    s++;
  }

  close (fd);
  return 1;

}
