
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int k; unsigned char* ptr; } ;
typedef TYPE_1__ bcode_iterator ;



int bcode_iter_get_val (bcode_iterator *it, int i) {
  if (i >= it->len) {
    return 0;
  }
  int pred = it->k * i;
  const unsigned char *tmp = it->ptr + (pred >> 3);
  pred &= 7;

  if (pred + it->k <= 8) {
    return ( ( *tmp ) >> pred ) & ( (1 << it->k) - 1 );
  }

  int res = ( ( *tmp++ ) >> pred );
  pred = it->k - (8 - pred);

  while (pred > 8) {
    res = (res << 8) + *tmp++;
    pred -= 8;
  }

  res = (res << pred) + ( *tmp & ( (1 << pred) - 1) );
  return res;
}
