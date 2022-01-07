
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int hashset_ll_init (int *,int) ;
 int hs ;
 int stderr ;

void hashset_init (int n) {
  if (!hashset_ll_init (&hs, n)) {
    fprintf (stderr, "Could allocate hashset_ll, n = %d\n", n);
    exit (2);
  }
}
