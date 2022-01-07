
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NAME_SIZE ;
 int assert (int) ;
 int dl_qsort_ll (long long*,int) ;
 int dl_unique_ll (long long*,int) ;
 long long* prep_lbuf_res ;
 char* prepare_watchcat_str (char*,int ) ;

int gen_hashes (char *x) {
  char *v = prepare_watchcat_str (x, 0);
  if (v == ((void*)0)) {
    prep_lbuf_res[0] = 0;
    return 0;
  }

  int i;

  long long *u = prep_lbuf_res;
  int un = 0;

  for (i = 0; v[i]; ) {
    long long h = 3213211;

    while (v[i] && v[i] != '+') {
      h = h * 999983 + v[i];
      i++;
    }
    if (v[i]) {
      i++;
    }

    if (h == 0) {
      h = 1;
    }
    u[un++] = h;
  }

  assert (un < MAX_NAME_SIZE);

  dl_qsort_ll (u, un);
  un = dl_unique_ll (u, un);

  return un;
}
