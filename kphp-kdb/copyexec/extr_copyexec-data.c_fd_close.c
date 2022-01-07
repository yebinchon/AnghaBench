
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 scalar_t__ close (int) ;
 scalar_t__ errno ;
 int fd_close_success_level ;
 int vkprintf (int,char*,int) ;

__attribute__((used)) static void fd_close (int *fd) {
  if (*fd >= 0) {
    while (1) {
      if (close (*fd) < 0) {
        if (errno == EINTR) {
          continue;
        }
        vkprintf (2, "close (%d) failed. %m\n", *fd);
        return;
      }
      vkprintf (fd_close_success_level, "fd = %d: was successfully closed.\n", *fd);
      *fd = -1;
      return;
    }
  }
  vkprintf (3, "skip closing negative fd = %d\n", *fd);
}
