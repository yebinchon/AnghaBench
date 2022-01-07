
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

void debug_hashes (int *v) {
  while (*v) {
    fprintf (stderr, "%d ", *v++);
  }
  fprintf (stderr, "\n");
}
