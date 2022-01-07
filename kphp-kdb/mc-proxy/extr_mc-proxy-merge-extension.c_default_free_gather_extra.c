
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

int default_free_gather_extra (void *E) {
  if (E) {
    fprintf (stderr, "Memory leak in default_free_gather_extra.\n");
  }
  return 0;
}
