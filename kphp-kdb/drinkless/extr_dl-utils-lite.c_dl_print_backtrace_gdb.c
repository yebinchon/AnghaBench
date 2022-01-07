
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int _exit (int ) ;
 int dup2 (int,int) ;
 int execlp (char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,int *) ;
 int fork () ;
 int fprintf (int ,char*,...) ;
 int getpid () ;
 size_t readlink (char*,char*,int) ;
 int sprintf (char*,char*,int) ;
 int stderr ;
 int stdout ;
 int waitpid (int,int *,int ) ;

void dl_print_backtrace_gdb (void) {
  char pid_buf[30];
  sprintf (pid_buf, "%d", getpid());
  char name_buf[512];
  ssize_t res = readlink ("/proc/self/exe", name_buf, 511);
  if (res >= 0) {
    name_buf[res] = 0;
    int child_pid = fork();
    if (child_pid < 0) {
      fprintf (stderr, "Can't fork() to run gdb\n");
      _exit (0);
    }
    if (!child_pid) {
      dup2 (2, 1);
      fprintf (stdout, "stack trace for %s pid = %s\n", name_buf, pid_buf);
      execlp ("gdb", "gdb", "--batch", "-n", "-ex", "thread", "-ex", "bt", name_buf, pid_buf, ((void*)0));
      _exit (0);
    } else {
      waitpid (child_pid, ((void*)0), 0);
    }
  } else {
    fprintf (stderr, "can't get name of executable file to pass to gdb\n");
  }
}
