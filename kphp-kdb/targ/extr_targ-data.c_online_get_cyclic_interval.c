
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* ocntT ;
 int online_get_interval (int,int) ;

__attribute__((used)) static inline int online_get_cyclic_interval (int a, int b) {
  if (a <= b) {
    return online_get_interval (a, b);
  } else {
    return ocntT[1] - online_get_interval (b + 1, a - 1);
  }
}
