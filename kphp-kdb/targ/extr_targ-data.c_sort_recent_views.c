
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void sort_recent_views (long long *A, long B) {
  if (B <= 0) {
    return;
  }
  long i = 0, j = B;
  long long h = A[j >> 1], t;
  do {
    while (A[i] > h) {
      ++i;
    }
    while (h > A[j]) {
      --j;
    }
    if (i <= j) {
      t = A[i]; A[i] = A[j]; A[j] = t;
      ++i; --j;
    }
  } while (i <= j);
  sort_recent_views (A, j);
  sort_recent_views (A + i, B - i);
}
