
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* KA ;
 int* KB ;
 int KL ;
 char* KS ;
 int fprintf (int ,char*,int,char,int,int) ;
 int stderr ;

void aho_dump (void) {
  int i;
  for (i = 0; i < KL; i++) {
    fprintf (stderr, "%3d:  '%c'\t%d\t%d\n", i, KS[i] ? KS[i] : '.', KA[i], KB[i]);
  }
}
