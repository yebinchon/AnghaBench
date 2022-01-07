
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fd_try_close (int) ;
 int max_connection ;
 int vkprintf (int,char*,int) ;

__attribute__((used)) static void close_unused_fd (int fd) {
  int i, r = 0;
  for (i = 3; i <= max_connection; i++) {
    if (i == fd) {
      continue;
    }
    r += fd_try_close (i);
  }

  for ( ; i < fd; i++) {
    if (fd_try_close (i) > 0) {
      vkprintf (1, "close_unused_fd: found resourse leakage (fd:%d).\n", i);
      r++;
    }
  }

  vkprintf (3, "close_unused_fd: close %d fd(s)\n", r);
}
