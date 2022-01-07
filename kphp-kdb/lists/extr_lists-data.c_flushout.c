
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Buff ;
 int SWS ;
 int assert (int) ;
 int kfs_sws_write (int *,scalar_t__,int) ;
 int metafile_pos ;
 int newidx_fd ;
 scalar_t__ rptr ;
 scalar_t__ wptr ;
 scalar_t__ wptr0 ;
 int write (int,scalar_t__,int) ;
 int write_pos ;

void flushout (void) {
  int s;
  if (wptr > wptr0) {
    s = wptr - wptr0;
    write_pos += s;
    metafile_pos += s;
  }
  if (rptr < wptr) {
    s = wptr - rptr;
    if (newidx_fd >= 1) {
      assert (write (newidx_fd, rptr, s) == s);
    } else {
      kfs_sws_write (&SWS, rptr, s);
    }
  }
  rptr = wptr = wptr0 = Buff;
}
