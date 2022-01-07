
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PRIVACY_LEN ;
 int* P ;
 int PL ;
 int PL_M_CAT ;
 int PL_M_MASK ;
 int assert (int) ;

int unpack_privacy (const int *PP, int L) {
  const int *PE = PP + L;
  int *A = P;
  assert (L <= MAX_PRIVACY_LEN);
  while (PP < PE) {
    int x = *PP++, s;
    assert (A < P + MAX_PRIVACY_LEN - 32);
    if (!(x & PL_M_CAT)) {
      *A++ = x;
      continue;
    }
    s = x & ~PL_M_MASK;
    switch (x & PL_M_MASK) {
    case 130:
    case 129:
      *A++ = x;
      continue;
    case 128:
      *A++ = s;
      continue;
    }
    int i;
    for (i = 0; i < 30; i++) {
      if (x & 1) {
        *A++ = s + i + 1;
      }
      x >>= 1;
    }
  }
  *A = -1;
  PL = A - P;
  return PL;
}
