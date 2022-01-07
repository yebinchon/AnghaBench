
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int fprintf (int ,char*,int) ;
 int out ;

void dump_wait_status (int status) {
  if (WIFEXITED(status)) {
    fprintf (out, "exit:%d", WEXITSTATUS(status));
  } else if (WIFSIGNALED(status)) {
    fprintf (out, "sig:%d", WTERMSIG(status));
  } else {
    fprintf (out, "%d", status);
  }
}
