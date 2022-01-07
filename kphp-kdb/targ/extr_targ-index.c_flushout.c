
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Buff ;
 int assert (int) ;
 int crc32_acc ;
 int crc32_partial (scalar_t__,scalar_t__,int ) ;
 int metafile_pos ;
 int newidx_fd ;
 scalar_t__ rptr ;
 scalar_t__ wptr ;
 scalar_t__ wptr0 ;
 scalar_t__ wptr_crc ;
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
    assert (rptr <= wptr_crc && wptr_crc <= wptr);
    crc32_acc = crc32_partial (wptr_crc, wptr - wptr_crc, crc32_acc);
  }
  rptr = wptr = wptr0 = wptr_crc = Buff;
}
