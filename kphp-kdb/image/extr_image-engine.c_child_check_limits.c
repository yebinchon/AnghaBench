
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ am_get_memory_usage (scalar_t__,long long*,int) ;
 long long rss_memory_limit ;
 int vkprintf (int,char*,int) ;
 long long vmsize_limit ;

__attribute__((used)) static int child_check_limits (pid_t pid) {
  long long a[2];
  if (am_get_memory_usage (pid, a, 2) < 0) {
    return -1;
  }
  if (a[0] > vmsize_limit) {
    vkprintf (1, "[%d] exceeds vmsize_limit\n", (int) pid);
    return 1;
  }
  if (a[1] > rss_memory_limit) {
    vkprintf (1, "[%d] exceeds rss_memory_limit\n", (int) pid);
    return 1;
  }
  return 0;
}
