
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_WRLCK ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int PATH_MAX ;
 int assert (int) ;
 scalar_t__ getpid () ;
 int kprintf (char*,char*) ;
 scalar_t__ lock_whole_file (scalar_t__,int ) ;
 scalar_t__ open (char*,int,int) ;
 scalar_t__ pid_fd ;
 int pid_filename ;
 int snprintf (char*,int,char*,...) ;
 char* szPidFilename ;
 int write (scalar_t__,char*,int) ;
 int zstrdup (char*) ;

int lock_pid_file (const char *const dir) {
  char a[PATH_MAX];
  assert (snprintf (a, PATH_MAX, "%s/%s", dir, szPidFilename) < PATH_MAX);
  pid_fd = open (a, O_CREAT | O_WRONLY | O_EXCL, 0660);
  if (pid_fd < 0) {
    kprintf ("creating %s failed. %m\n", a);
    return -1;
  }
  if (lock_whole_file (pid_fd, F_WRLCK) < 0) {
    kprintf ("lock %s failed. %m\n", a);
    return -2;
  }
  pid_filename = zstrdup (a);
  int l = snprintf (a, PATH_MAX, "%lld\n", (long long) getpid ());
  assert (l < PATH_MAX);
  assert (write (pid_fd, a, l) == l);
  return 1;
}
