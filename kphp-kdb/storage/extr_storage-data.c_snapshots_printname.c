
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * filename_newidx ;
 scalar_t__* newidx_fd ;
 int newidx_fds ;
 int print_snapshot_name (int ) ;

__attribute__((used)) static void snapshots_printname (void) {
  int k;
  for (k = 0; k < newidx_fds; k++) {
    if (newidx_fd[k] >= 0) {
      print_snapshot_name (filename_newidx[k]);
    }
  }
}
