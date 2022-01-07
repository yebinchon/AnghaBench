
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * VD ;
 int VN ;
 scalar_t__ cmp_voting (int *,int *) ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 scalar_t__ verbosity ;

__attribute__((used)) static void kill_dup_votings (void) {
  int i, j = 1;
  if (!VN) {
    return;
  }
  for (i = 1; i < VN; i++) {
    if (cmp_voting (&VD[i-1], &VD[i])) {
      VD[j++] = VD[i];
    }
  }
  if (verbosity > 0) {
    fprintf (stderr, "deleted %d duplicate records\n", VN - j);
  }
  VN = j;
}
