
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Buff ;
 int assert (int) ;
 int metafile_pos ;
 int newidx_fd ;
 scalar_t__ rptr ;
 scalar_t__ wptr ;
 scalar_t__ wptr0 ;
 int write (int ,scalar_t__,int) ;
 int write_pos ;

void flushout (void) {
  int w, s;
  if (wptr > wptr0) {
    s = wptr - wptr0;
    write_pos += s;
    metafile_pos += s;
  }
  if (rptr < wptr) {
    s = wptr - rptr;
    w = write (newidx_fd, rptr, s);
    assert (w == s);
  }
  rptr = wptr = wptr0 = Buff;
}
