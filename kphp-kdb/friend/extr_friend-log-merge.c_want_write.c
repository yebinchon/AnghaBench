
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {scalar_t__ a; } ;


 int LEV_TIMESTAMP ;
 int fprintf (int ,char*,scalar_t__,scalar_t__,int ) ;
 int mode ;
 int rd_bytes ;
 scalar_t__ skip_timestamps ;
 int stderr ;
 scalar_t__ t_cutoff ;
 scalar_t__ t_now ;

__attribute__((used)) static int want_write (int type, void *ptr) {
  struct lev_generic *E = ptr;

  if (type == LEV_TIMESTAMP && E->a > t_now) {
    t_now = E->a;
    if (t_now > t_cutoff && !mode) {
      mode = 1;
      fprintf (stderr, "reached binlog time %d above cutoff time %d at read position %lld\n", t_now, t_cutoff, rd_bytes);
    }
  }

  if (type == LEV_TIMESTAMP && skip_timestamps) {
    return 0;
  }

  return mode;
}
