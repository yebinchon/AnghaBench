
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int close (int) ;
 int fcntl (int,int ,int ) ;
 int pipe (int*) ;

__attribute__((used)) static int mpipe(int *fds) {
  if (pipe(fds) == -1)
    return -1;
  if (fcntl(fds[0], F_SETFD, FD_CLOEXEC) == -1 ||
      fcntl(fds[1], F_SETFD, FD_CLOEXEC) == -1) {
    close(fds[0]);
    close(fds[1]);
    return -1;
  }
  return 0;
}
