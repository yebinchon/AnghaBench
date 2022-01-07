
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg (char*,char*,int*,int) ;

void apply_perm (char *s, int *perm, int n) {
  dbg ("In apply_perm s = %p, perm = %p, n = %d\n", s, perm, n);
  int i;
  for (i = 0; i < n; i++) {
    int j = perm[i];
    char t = s[i];
    s[i] = s[j];
    s[j] = t;
  }
  dbg ("After apply_perm s = %p, perm = %p, n = %d\n", s, perm, n);
}
