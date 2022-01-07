
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int * filename_newidx ;
 scalar_t__ fsync (int) ;
 int kprintf (char*,int ) ;
 int* newidx_fd ;
 int newidx_fds ;

__attribute__((used)) static int snapshots_sync (void) {
  int k, ok = 0;
  for (k = 0; k < newidx_fds; k++) {
    if (newidx_fd[k] >= 0) {
      if (fsync (newidx_fd[k]) < 0) {
        kprintf ("%s syncing fail. %m\n", filename_newidx[k]);
        close (newidx_fd[k]);
        newidx_fd[k] = -1;
      } else {
        ok++;
      }
    }
  }
  return ok;
}
