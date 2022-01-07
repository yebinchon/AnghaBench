
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treap ;
typedef scalar_t__* changes ;


 int trp_conv_to_array_rev (int ,int*) ;

int chg_conv_to_array (changes x, int *res) {

  if ((long)(x) < 0) {
    res[0] = -(long)(x);
    return 1;
  } else

  if (x) {
    if (x[0] > 0) {
      int i, n;
      for (n = x[0]; !x[n]; n--) ;
      for (i = n; i >= 1; i--) {
        *res++ = x[i];
      }
      return n;
    } else {
      return trp_conv_to_array_rev (*(treap *)(x), res);
    }
  }
  return 0;
}
