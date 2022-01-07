
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_filename ;
typedef scalar_t__ pid_t ;
typedef int buf ;


 int assert (int) ;
 int parse_statm (char*,long long*,int) ;
 scalar_t__ read_whole_file (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;

int am_get_memory_usage (pid_t pid, long long *a, int m) {
  char proc_filename[32];
  char buf[4096];
  assert (snprintf (proc_filename, sizeof (proc_filename), "/proc/%d/statm", (int) pid) < sizeof (proc_filename));
  if (read_whole_file (proc_filename, buf, sizeof (buf)) < 0) {
    return -1;
  }
  return parse_statm (buf, a, m);
}
