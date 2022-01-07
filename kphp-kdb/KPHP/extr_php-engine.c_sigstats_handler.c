
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sival_int; } ;
struct TYPE_5__ {scalar_t__ si_code; TYPE_1__ si_value; } ;
typedef TYPE_2__ siginfo_t ;


 scalar_t__ SI_QUEUE ;
 int SPOLL_SEND_FULL_STATS ;
 int SPOLL_SEND_IMMEDIATE_STATS ;
 int SPOLL_SEND_STATS ;
 int dl_assert (int ,char*) ;
 int spoll_send_stats ;
 int write_immediate_stats_to_pipe () ;

__attribute__((used)) static void sigstats_handler (int signum, siginfo_t *info, void *data) {
  dl_assert (info != ((void*)0), "SIGPOLL with no info");
  if (info->si_code == SI_QUEUE) {
    int code = info->si_value.sival_int;
    if ((code & 0xFFFF0000)== SPOLL_SEND_STATS) {
      if (code & SPOLL_SEND_FULL_STATS) {
        spoll_send_stats++;
      }
      if (code & SPOLL_SEND_IMMEDIATE_STATS) {
        write_immediate_stats_to_pipe();
      }
    }
  }
}
