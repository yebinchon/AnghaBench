
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_3__ {int starttime; int cstime; int cutime; int stime; int utime; } ;
typedef TYPE_1__ pid_info_t ;


 int O_RDONLY ;
 int TMEM_SIZE ;
 int close (int) ;
 int dl_assert (int ,char*) ;
 int open (char*,int ) ;
 scalar_t__ read (int,char*,int) ;
 int snprintf (char*,int,char*,unsigned long) ;
 int sscanf (char*,char*,int *) ;

int get_pid_info (pid_t pid, pid_info_t *info) {

  static char mem[10000];
  snprintf (mem, 10000, "/proc/%lu/stat", (unsigned long)pid);
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
  int pass_cnt = 0;

  while (pass_cnt < 22) {
    if (pass_cnt == 12) {
      sscanf (s, "%llu", &info->utime);
    }
    if (pass_cnt == 13) {
      sscanf (s, "%llu", &info->stime);
   }
    if (pass_cnt == 14) {
      sscanf (s, "%llu", &info->cutime);
    }
    if (pass_cnt == 15) {
      sscanf (s, "%llu", &info->cstime);
    }
    if (pass_cnt == 21) {
      sscanf (s, "%llu", &info->starttime);
    }
    while (*s && *s != ' ') {
      s++;
    }
    if (*s == ' ') {
      s++;
      pass_cnt++;
    } else {
      dl_assert (0, "unexpected end of proc file");
      break;
    }
  }

  close (fd);
  return 1;

}
