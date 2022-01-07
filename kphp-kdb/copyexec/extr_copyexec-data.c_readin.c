
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BUFFSIZE ;
 scalar_t__ Buff ;
 scalar_t__ EINTR ;
 int assert (int) ;
 scalar_t__ errno ;
 int kprintf (char*) ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int read (int,scalar_t__,scalar_t__) ;
 scalar_t__ rptr ;
 int vkprintf (int,char*,int,long long) ;
 scalar_t__ wptr ;

__attribute__((used)) static void *readin (int fd, size_t len) {
  vkprintf (4, "readin (fd: %d, len: %lld)\n", fd, (long long) len);
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
  int r;
  do {
    r = read (fd, wptr, Buff + BUFFSIZE - wptr);
  } while (r < 0 && errno == EINTR);
  if (r < 0) {
    kprintf ("error reading file: %m\n");
  } else {
    wptr += r;
  }
  if (rptr + len <= wptr) {
    return rptr;
  } else {
    return 0;
  }
}
