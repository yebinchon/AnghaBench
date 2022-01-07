
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* Buff ;
 int assert (int) ;
 scalar_t__* rptr ;
 scalar_t__* wptr ;
 int write (int,scalar_t__,int) ;

void flushout (void) {
  int w, s;
  if (rptr[2] < wptr[2]) {
    s = wptr[2] - rptr[2];
    w = write (1, rptr[2], s);
    assert (w == s);
  }
  rptr[2] = wptr[2] = Buff[2];
}
