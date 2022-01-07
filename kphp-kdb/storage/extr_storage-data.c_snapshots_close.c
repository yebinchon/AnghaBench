
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ close (int) ;
 int* newidx_fd ;
 int newidx_fds ;

__attribute__((used)) static int snapshots_close (void) {
  int k, ok = 0;
  for (k = 0; k < newidx_fds; k++) {
    if (newidx_fd[k] >= 0) {
      if (close (newidx_fd[k]) < 0) {
        newidx_fd[k] = -1;
      } else {
        ok++;
      }
    }
  }
  return ok;
}
