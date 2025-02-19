
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_TRUNC ;
 int O_WRONLY ;
 int assert (int) ;
 int close (int) ;
 int getpid () ;
 int kprintf (char*,char*) ;
 int open (char*,int) ;
 int sprintf (char*,char*,int) ;
 int write (int,char*,int) ;

int adjust_oom_score (int oom_score_adj) {
  static char path[64], str[16];
  assert (sprintf (path, "/proc/%d/oom_score_adj", getpid()) < 64);
  int l = sprintf (str, "%d", oom_score_adj);
  assert (l <= 15);
  int fd = open (path, O_WRONLY | O_TRUNC);
  if (fd < 0) {
    kprintf ("cannot write to %s : %m\n", path);
    return -1;
  }
  int w = write (fd, str, l);
  if (w < 0) {
    kprintf ("cannot write to %s : %m\n", path);
    close (fd);
    return -1;
  }
  close (fd);
  return (w == l);
}
