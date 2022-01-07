
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Buff ;
 int assert (int) ;
 int * fd ;
 scalar_t__ rptr ;
 scalar_t__ wptr ;
 int write (int ,scalar_t__,int) ;

void flushout (void) {
  int w, s;
  if (rptr < wptr) {
    s = wptr - rptr;
    w = write (fd[0], rptr, s);
    assert (w == s);
  }
  rptr = wptr = Buff;
}
