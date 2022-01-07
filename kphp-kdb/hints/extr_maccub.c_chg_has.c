
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treap ;
typedef int* changes ;


 int trp_has (int ,int) ;

int chg_has (changes x, int val) {
  val *= 2;


  if ((long)(x) < 0) {
    if (((-(long)(x)) & -2) == val) {
      return (-(long)(x)) & 1 ? 1 : -1;
    }
    return 0;
  } else

  if (x) {
    if (x[0] > 0) {
      int i, n = x[0];

      for (i = 1; i <= n; i++) {
        if ((x[i] & -2) == val) {
          return x[i] & 1 ? 1 : -1;
        }
      }
      return 0;
    } else {
      return trp_has (*(treap *)(x), val);
    }

  }
  return 0;
}
