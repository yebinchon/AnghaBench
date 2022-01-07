
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Entry ;
 int ans ;
 scalar_t__ ans_n ;
 int dl_qsort_addr (int ,scalar_t__) ;
 int process_entry (int *) ;
 int strlen (char*) ;
 int watchcat_prepare_entry (int *,char*,int ) ;

char *gen_addrs (char *s) {

  char *t = s;
  int f = 0;
  while (*t) {
    if (*t++ == 1) {
      f = 1;
      t[-1] = 0;
      break;
    }
  }

  watchcat_prepare_entry (&Entry, s, strlen (s));

  if (f) {
    t[-1] = 1;
  } else {
    t = s;
  }

  ans_n = 0;
  process_entry(&Entry);
  dl_qsort_addr (ans, ans_n);
  return t;
}
