
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * filename_newidx ;
 int* newidx_fd ;
 int newidx_fds ;
 scalar_t__ strlen (int ) ;
 int tszfree (int ,scalar_t__) ;

__attribute__((used)) static void snapshots_free (void) {
  int k;
  for (k = 0; k < newidx_fds; k++) {
    tszfree (filename_newidx[k], strlen (filename_newidx[k]) + 1);
    newidx_fd[k] = -1;
  }
}
