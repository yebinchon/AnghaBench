
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int binlog_fd ;
 int fprintf (int ,char*,int) ;
 int replay_log (int ,int) ;
 int stderr ;

void read_new_events (void) {
  int res = replay_log (0, 1);
  if (res < 0) {
    fprintf (stderr, "fatal: ceased reading binlog updates from %d.\n", binlog_fd);
    binlog_fd = -1;
  }
}
