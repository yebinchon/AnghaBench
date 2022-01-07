
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int binlog_disabled ;
 scalar_t__ binlogname ;
 int child_pid ;
 int close (int ) ;
 int exit (int) ;
 int flush_binlog_ts () ;
 scalar_t__ force_write_index ;
 int fork () ;
 int kprintf (char*) ;
 int sfd ;
 int vkprintf (int,char*,int) ;
 int write_index (int) ;

void fork_write_index (void) {
  if (child_pid) {
    vkprintf (1, "process with pid %d already generates index, skipping\n", child_pid);
    return;
  }

  flush_binlog_ts ();

  int res = fork ();

  if (res < 0) {
    kprintf ("fork: %m\n");
  } else if (!res) {
    binlogname = 0;
    close (sfd);
    res = write_index (!binlog_disabled);
    exit (res);
  } else {
    vkprintf (1, "created child process pid = %d\n", res);
    child_pid = res;
  }

  force_write_index = 0;
}
