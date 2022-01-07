
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* __a ;
 int __c ;
 int __f ;

void __rx_do (int t) {
  if (__f < t && __c < 50) {
    __a[2 * __c + 0] = __f;
    __a[2 * __c + 1] = t - 1;
    __c ++;
  }
  __f = t + 1;
}
