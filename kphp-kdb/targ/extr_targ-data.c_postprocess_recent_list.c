
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long Q_limit ;
 int* R ;
 long R_cnt ;
 int do_llswap (int*,long) ;
 int sort_recent_views (long long*,long) ;

int postprocess_recent_list (int count) {
  R_cnt = 0;
  if (!count || Q_limit < 0) {
    return 0;
  }
  if (!Q_limit) {
    return count;
  }
  sort_recent_views ((long long *)R, count - 1);
  long i, j = 0;
  R[1] = 1;
  for (i = 1; i < count; i++) {
    if (R[i * 2] == R[j * 2]) {
      ++R[j * 2 + 1];
    } else {
      ++j;
      R[j * 2] = R[i * 2];
      R[j * 2 + 1] = 1;
    }
  }
  ++j;
  do_llswap (R, j);
  sort_recent_views ((long long *)R, j - 1);
  do_llswap (R, j);
  if (Q_limit > j) {
    Q_limit = j;
  }
  R_cnt = Q_limit * 2;
  return count;
}
