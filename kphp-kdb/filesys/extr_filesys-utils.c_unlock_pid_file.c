
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (scalar_t__) ;
 scalar_t__ pid_fd ;
 int pid_filename ;
 int unlink (int ) ;

void unlock_pid_file (void) {
  if (pid_fd >= 0) {
    unlink (pid_filename);
    close (pid_fd);
  }
}
