
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rating ;


 float fabsf (scalar_t__) ;

inline int rating_cmp (rating a, rating b) {
  rating res = a - b;
  if (fabsf (res) < 1e-7f) {
    return 0;
  }
  if (res < 0) {
    return -1;
  }
  return 1;
}
