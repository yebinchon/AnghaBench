
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg (char*,char*,int*,int) ;

void apply_perm_rev (char *s, int *perm, int n) {
  dbg ("In apply_perm_rev s = %p, perm = %p, n = %d\n", s, perm, n);
  int i;
  for (i = n - 1; i >= 0; i--) {
    int j = perm[i];
    char t = s[i];
    s[i] = s[j];
    s[j] = t;
  }
  dbg ("After apply_perm_rev s = %p, perm = %p, n = %d\n", s, perm, n);
}
