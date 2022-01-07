
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int min (int,int) ;

int key_cmp2 (int l1, const int *k1, int l2, const int *k2, int s) {
  int i;
  int l = min (l1, l2);
  for (i = s; i < l; i++) {
    if (k1[i] < k2[i]) {
      return -(i + 1);
    } else if (k1[i] > k2[i]) {
      return (i + 1);
    }
  }
  if (l1 < l2) {
    return -(i + 1);
  } else if (l1 > l2) {
    return (i + 1);
  } else {
    return 0;
  }
}
