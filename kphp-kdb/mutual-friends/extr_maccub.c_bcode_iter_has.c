
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int * ptr; } ;
typedef TYPE_1__ bcode_iterator ;


 int bcode_iter_get_val (TYPE_1__*,int) ;

int bcode_iter_has (bcode_iterator *it, int val) {
  if (it->ptr == ((void*)0)) {
    return 0;
  }

  int n = it->len;

  int l = 0, r = n, c;
  while (l + 1 < r) {
    c = (l + r) / 2;
    if (bcode_iter_get_val (it, c) >= val) {
      l = c;
    } else {
      r = c;
    }
  }

  return bcode_iter_get_val (it, l) == val;
}
