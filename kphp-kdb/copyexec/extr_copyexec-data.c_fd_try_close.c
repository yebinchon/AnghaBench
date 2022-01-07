
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 scalar_t__ close (int) ;
 scalar_t__ errno ;

__attribute__((used)) static int fd_try_close (int fd) {
  while (1) {
    if (close (fd) < 0) {
      if (errno == EINTR) {
        continue;
      }
      return 0;
    }
    return 1;
  }
}
