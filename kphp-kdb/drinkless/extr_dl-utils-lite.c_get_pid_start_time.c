
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_3__ {unsigned long long starttime; } ;
typedef TYPE_1__ pid_info_t ;


 scalar_t__ get_pid_info (int ,TYPE_1__*) ;

unsigned long long get_pid_start_time (pid_t pid) {
  pid_info_t info;
  unsigned long long res = 0;
  if (get_pid_info (pid, &info)) {
    res = info.starttime;
  }

  return res;
}
