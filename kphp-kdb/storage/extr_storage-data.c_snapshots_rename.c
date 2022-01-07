
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * filename_newidx ;
 int kprintf (char*,int ) ;
 int* newidx_fd ;
 int newidx_fds ;
 scalar_t__ rename_temporary_snapshot (int ) ;
 int unlink (int ) ;

__attribute__((used)) static int snapshots_rename (void) {
  int k, ok = 0;
  for (k = 0; k < newidx_fds; k++) {
    if (newidx_fd[k] >= 0) {
      if (rename_temporary_snapshot (filename_newidx[k])) {
        kprintf ("cannot rename new index file from %s: %m\n", filename_newidx[k]);
        unlink (filename_newidx[k]);
        newidx_fd[k] = -1;
      } else {
        ok++;
      }
    }
  }
  return ok;
}
