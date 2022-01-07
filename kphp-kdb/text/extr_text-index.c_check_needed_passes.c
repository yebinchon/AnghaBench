
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compute_max_uid (int,double) ;
 int max_uid ;

int check_needed_passes (double threshold) {
  int k = 0, uid = 0;
  while (uid <= max_uid) {
    int t = compute_max_uid (uid, threshold);
    if (t <= uid) {
      return 1000000000;
    }
    k++;
    uid = t;
  }
  return k;
}
