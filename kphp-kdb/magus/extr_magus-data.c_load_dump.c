
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int* dumps ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int verbosity ;

void load_dump (int t) {
  assert (0 < t && t < 256);
  assert (dumps[t]);

  if (verbosity > 1) {
    fprintf (stderr, "Begin of loading dump %d\n", t);
  }
  if (verbosity > 1) {
    fprintf (stderr, "End of loading dump %d\n", t);
  }
}
