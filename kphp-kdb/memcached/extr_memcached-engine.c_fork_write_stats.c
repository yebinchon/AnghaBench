
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int child_pid ;
 scalar_t__ close (int ) ;
 int exit (int ) ;
 int fork () ;
 int fprintf (int ,char*,...) ;
 int sfd ;
 int stderr ;
 scalar_t__ verbosity ;
 int write_stats () ;

void fork_write_stats (void) {
  if (child_pid) {
    return;
  }

  int res = fork();

  if (res < 0) {
    fprintf (stderr, "fork: %m\n");
  } else if (!res) {
    assert (close (sfd) >= 0);

    write_stats();
    exit (0);
  } else {
    if (verbosity > 0) {
      fprintf (stderr, "created child process pid = %d\n", res);
    }
    child_pid = res;
  }
}
