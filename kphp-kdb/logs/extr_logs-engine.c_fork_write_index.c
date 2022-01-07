
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * binlogname ;
 int child_pid ;
 int exit (int) ;
 int flush_binlog_ts () ;
 scalar_t__ force_write_index ;
 int fork () ;
 int fprintf (int ,char*,...) ;
 int save_index () ;
 int stderr ;
 scalar_t__ verbosity ;

void fork_write_index (void) {
  if (child_pid) {
    if (verbosity > 0) {
      fprintf (stderr, "process with pid %d already generates index, skipping\n", child_pid);
    }
    return;
  }

  flush_binlog_ts();

  int res = fork();

  if (res < 0) {
    fprintf (stderr, "fork: %m\n");
  } else if (!res) {
    binlogname = ((void*)0);
    res = save_index();
    exit (res);
  } else {
    if (verbosity > 0) {
      fprintf (stderr, "created child process pid = %d\n", res);
    }
    child_pid = res;
  }

  force_write_index = 0;
}
