
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ hash_t ;
struct TYPE_3__ {int len; scalar_t__* A; } ;
typedef TYPE_1__ hash_list_t ;



int in_hashlist (hash_t x, hash_list_t *L) {
  int a, b, c;
  if (!L) { return 0; }
  a = -1; b = L->len;
  while (b - a > 1) {
    c = (a + b) >> 1;
    if (L->A[c] < x) {
      a = c;
    } else if (L->A[c] > x) {
      b = c;
    } else {
      return c + 1;
    }
  }
  return 0;
}
