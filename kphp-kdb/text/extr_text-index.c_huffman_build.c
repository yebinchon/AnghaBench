
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int heap_sift (long long*,int,int) ;

int huffman_build (long long *A, int N) {
  int i, j, k, M = 0;

  A += N-1;


  for (i = 1 - N; i <= 0; i++) {
    if (A[i] > 0) {
      j = ++M;
      while (j > 1) {
 k = (j >> 1);
 if (A[(long) A[k]] <= A[i]) { break; }
 A[j] = A[k];
 j = k;
      }
      A[j] = i;
    }
  }

  if (M < 2) {
    if (M) {
      A[(long) A[1]] = 1;
    }
    return M;
  }

  k = M;


  while (M >= 2) {
    long long x = A[1], y = A[M--];
    heap_sift (A, M, y);
    y = A[1];
    A[M+1] = A[x] + A[y];
    A[x] = A[y] = M+1;
    heap_sift (A, M, M+1);
  }


  M = k;
  A[2] = 0;
  for (i = 3; i <= M; i++) {
    A[i] = A[(long) A[i]] + 1;
  }

  for (i = 1 - N; i <= 0; i++) {
    if (A[i] > 0) {
      A[i] = A[(long) A[i]] + 1;
    }
  }

  return M;
}
