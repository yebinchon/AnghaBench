
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WB ;
 int assert (int) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int targ_fd ;
 char* targ_fname ;
 scalar_t__ verbosity ;
 int wptr ;
 int wr_bytes ;
 int write (int ,int,int) ;
 int wst ;

void flush_out (void) {
  int a, b = wptr - wst;
  assert (b >= 0);
  if (!b) {
    wptr = wst = WB;
    return;
  }
  a = write (targ_fd, wst, b);
  if (a > 0) {
    wr_bytes += a;
  }
  if (a < b) {
    fprintf (stderr, "error writing to %s: %d bytes written out of %d: %m\n", targ_fname, a, b);
    exit(3);
  }
  if (verbosity > 0) {
    fprintf (stderr, "%d bytes written to %s\n", a, targ_fname);
  }
  wptr = wst = WB;
}
