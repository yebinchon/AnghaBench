
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_event (int ,char*,int,int ,int ,int ) ;
 int fprintf (int ,char*,...) ;
 int get_queue (int ,int ) ;
 int get_watchcat_s (long long) ;
 int my_verbosity ;
 int stderr ;
 int strlen (char*) ;

void add_event_to_watchcats (long long *ids, int idn, char *event) {
  int len = strlen (event), i;

  if (my_verbosity > 1) {
    fprintf (stderr, "add %s to ", event);
  }
  for (i = 0; i < idn; i++) {
    if (my_verbosity > 1) {
      fprintf (stderr, " %lld", ids[i]);
    }
    add_event (get_queue (get_watchcat_s (ids[i]), 0), event, len, 0, 0, 0);
  }
  if (my_verbosity > 1) {
    fprintf (stderr, "\n");
  }
}
