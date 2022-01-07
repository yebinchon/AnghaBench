
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IO_BUFFSIZE ;
 int assert (int) ;
 int fprintf (int ,char*) ;
 int idx_fd ;
 scalar_t__ io_buff ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int read (int ,scalar_t__,scalar_t__) ;
 scalar_t__ rptr ;
 int stderr ;
 scalar_t__ wptr ;

__attribute__((used)) static void *readin (size_t len) {
  assert (len >= 0);
  if (rptr + len <= wptr) {
    return rptr;
  }
  if (wptr < io_buff + IO_BUFFSIZE) {
    return 0;
  }
  memcpy (io_buff, rptr, wptr - rptr);
  wptr -= rptr - io_buff;
  rptr = io_buff;
  int r = read (idx_fd, wptr, io_buff + IO_BUFFSIZE - wptr);
  if (r < 0) {
    fprintf (stderr, "error reading file: %m\n");
  } else {
    wptr += r;
  }
  if (rptr + len <= wptr) {
    return rptr;
  } else {
    return 0;
  }
}
