
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;


 int FD_CLOEXEC ;
 int F_SETFD ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int O_TRUNC ;
 int assert (int) ;
 char* cur_transaction_hash ;
 scalar_t__ fcntl (int,int ,int ) ;
 int fd_close (int*) ;
 int open (char*,int,int) ;
 int snprintf (char*,int,char*,int,char*,char*) ;
 scalar_t__ unlink (char*) ;
 int vkprintf (int,char*,...) ;

__attribute__((used)) static int do_exec_create_output_file (int cmd_id, char *suffix) {
  char filename[128];
  assert (snprintf (filename, sizeof (filename), ".c%d.%s.%s", cmd_id, cur_transaction_hash, suffix) < (int) sizeof (filename));
  int fd = open (filename, O_RDWR | O_CREAT | O_TRUNC | O_EXCL, 0000);
  if (fd < 0) {
    vkprintf (1, "create_output_file: creat (%s, O_RDWR | O_CREAT | O_TRUNC | O_EXCL, 0000) failed. %m\n", filename);
    return -1;
  }

  if (unlink (filename) < 0) {
    vkprintf (1, "create_output_file: unlink (%s) failed. %m\n", filename);
    fd_close (&fd);
    return -2;
  }

  if (fcntl (fd, F_SETFD, FD_CLOEXEC) < 0) {
    vkprintf (1, "create_output_file: fcntl (%d, F_SETFD, FD_CLOEXEC) failed. %m\n", fd);
    fd_close (&fd);
    return -3;
  }

  return fd;
}
