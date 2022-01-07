
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int llhuf_check_codes_lengths (int *l, int N) {
  int i, nz = 0;
  unsigned long long u = 0;
  for (i = 0; i < N; i++) {
    if (l[i]) {
      if (l[i] < 0 || l[i] >= 32) {
        return -1;
      }
      u += 1U << (32 - l[i]);
    } else {
      nz++;
    }
  }

  if (nz == N - 1) {
    return 0;
  }

  if (u > 0x100000000ULL) {
    return -2;
  }
  return 0;
}
