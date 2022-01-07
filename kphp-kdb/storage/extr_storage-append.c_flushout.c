
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Buff ;
 int kprintf (char*,int ,scalar_t__,int,int) ;
 scalar_t__ rptr ;
 int wfd ;
 scalar_t__ wptr ;
 int write (int ,scalar_t__,int) ;

int flushout (void) {
  int w, s;
  while (rptr < wptr) {
    s = wptr - rptr;
    w = write (wfd, rptr, s);
    if (w != s) {
      kprintf ("write (%d, %p, %d) fail, written %d bytes, %m\n", wfd, rptr, s, w);
      if (w > 0 && w < s) {
        rptr += w;
        continue;
      }
      return -1;
    } else {
      break;
    }
  }
  rptr = wptr = Buff;
  return 0;
}
