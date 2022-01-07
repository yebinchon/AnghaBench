
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* newidx_fd ;
 int newidx_fds ;

__attribute__((used)) static int snapshots_count (void) {
  int k, r = 0;
  for (k = 0; k < newidx_fds; k++) {
    if (newidx_fd[k] >= 0) {
      r++;
    }
  }
  return r;
}
