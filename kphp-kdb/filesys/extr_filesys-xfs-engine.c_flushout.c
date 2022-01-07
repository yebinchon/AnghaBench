
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Buff ;
 int assert (int) ;
 int newidx_fd ;
 scalar_t__ rptr ;
 scalar_t__ wptr ;
 int write (int ,scalar_t__,int) ;

__attribute__((used)) static void flushout (void) {
  int w, s;
  if (rptr < wptr) {
    s = wptr - rptr;
    w = write (newidx_fd, rptr, s);
    assert (w == s);
  }
  rptr = wptr = Buff;
}
