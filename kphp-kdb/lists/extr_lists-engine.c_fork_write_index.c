
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
 int fprintf (int ,char*,...) ;
 int sfd ;
 int stderr ;
 scalar_t__ verbosity ;
 int write_index (int) ;

void fork_write_index (void) {
  if (child_pid) {
    if (verbosity > 0) {
      fprintf (stderr, "process with pid %d already generates index, skipping\n", child_pid);
    }
    return;
  }

  flush_binlog_ts ();

  int res = fork ();

  if (res < 0) {
    fprintf (stderr, "fork: %m\n");
  } else if (!res) {
    binlogname = 0;
    close (sfd);
    res = write_index (!binlog_disabled);
    exit (res);
  } else {
    if (verbosity > 0) {
      fprintf (stderr, "created child process pid = %d\n", res);
    }
    child_pid = res;
  }

  force_write_index = 0;
}
