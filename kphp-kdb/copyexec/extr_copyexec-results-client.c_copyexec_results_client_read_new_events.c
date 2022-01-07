
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int binlog_fd ;
 int replay_log (int ,int) ;
 int vkprintf (int,char*,int) ;

__attribute__((used)) static void copyexec_results_client_read_new_events (void) {
  vkprintf (4, "copyexec_results_client_read_new_events: binlog_fd = %d\n", binlog_fd);
  int res = replay_log (0, 1);
  if (res < 0) {
    vkprintf (3, "replay_log returns %d.\n", res);
  }
}
