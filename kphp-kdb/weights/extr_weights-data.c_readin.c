
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BUFFSIZE ;
 scalar_t__ Buff ;
 int Snapshot ;
 int assert (int) ;
 scalar_t__ kfs_read_file (int ,scalar_t__,scalar_t__) ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ rptr ;
 scalar_t__ wptr ;

__attribute__((used)) static void *readin (size_t len) {
  assert (len >= 0);
  if (rptr + len <= wptr) {
    return rptr;
  }
  if (wptr < Buff + BUFFSIZE) {
    return 0;
  }
  memcpy (Buff, rptr, wptr - rptr);
  wptr -= rptr - Buff;
  rptr = Buff;
  wptr += kfs_read_file (Snapshot, wptr, Buff + BUFFSIZE - wptr);
  if (rptr + len <= wptr) {
    return rptr;
  } else {
    return 0;
  }
}
