
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WB ;
 int assert (int) ;
 int exit (int) ;
 int kprintf (char*,int ,int,int) ;
 int targ_fd ;
 int targ_fname ;
 int true_wr_bytes ;
 int vkprintf (int,char*,int,int ) ;
 int wptr ;
 int write (int ,int,int) ;
 int wst ;

__attribute__((used)) static void flush_out (void) {
  int a, b = wptr - wst;
  assert (b >= 0);
  if (!b) {
    wptr = wst = WB;
    return;
  }
  a = write (targ_fd, wst, b);
  if (a > 0) {
    true_wr_bytes += a;
  }
  if (a < b) {
    kprintf ("error writing to %s: %d bytes written out of %d: %m\n", targ_fname, a, b);
    exit (3);
  }

  vkprintf (1, "%d bytes written to %s\n", a, targ_fname);

  wptr = wst = WB;
}
