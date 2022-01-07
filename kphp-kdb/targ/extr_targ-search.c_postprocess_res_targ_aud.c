
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_limit ;
 int * R ;
 int R_cnt ;
 int lrand48 () ;
 int scan_targ_aud_user (int ) ;

void postprocess_res_targ_aud (void) {
  int N = R_cnt;
  if (Q_limit > N) {
    Q_limit = N;
  }
  long M = Q_limit, i;
  for (i = 0; (int) i < R_cnt; i++) {
    if (lrand48() % N < M) {
      M--;
      scan_targ_aud_user (R[i]);
    }
    N--;
  }
}
