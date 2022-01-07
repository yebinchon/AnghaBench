
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFFSIZE ;
 scalar_t__ Buff ;
 int assert (int) ;
 int errno ;
 int fprintf (int ,char*,int,...) ;
 int newidx_fd ;
 int stderr ;
 char* strerror (int) ;
 scalar_t__ verbosity ;
 scalar_t__ wptr ;
 int write (int ,scalar_t__,int) ;

void flushout (void) {
  if (Buff < wptr) {
    int s = wptr - Buff;
    int w = write (newidx_fd, Buff, s);
    int e = errno;
    if (verbosity) {
      fprintf (stderr, "(s,w,BUFFSIZE) = (%d %d %d)\n", s, w, BUFFSIZE);
    }
    if (w == -1) {
      fprintf (stderr, "errno = %d (%s)\n", e, strerror (e));
    }
    assert (w == s);
  }
  wptr = Buff;
}
