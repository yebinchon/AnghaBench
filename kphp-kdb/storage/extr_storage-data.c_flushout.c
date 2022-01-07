
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int * filename_newidx ;
 scalar_t__ io_buff ;
 int kprintf (char*,int ,int,int) ;
 int* newidx_fd ;
 int newidx_fds ;
 scalar_t__ rptr ;
 scalar_t__ wptr ;
 int write (int,scalar_t__,int) ;

__attribute__((used)) static void flushout (void) {
  int w, s;
  if (rptr < wptr) {
    int i;
    s = wptr - rptr;
    for (i = 0; i < newidx_fds; i++) {
      if (newidx_fd[i] >= 0) {
        w = write (newidx_fd[i], rptr, s);
        if (w != s) {
          kprintf ("Write to %s failed (%d of %d) bytes written. %m\n" , filename_newidx[i], w, s);
          close (newidx_fd[i]);
          newidx_fd[i] = -1;
        }
      }
    }
  }
  rptr = wptr = io_buff;
}
