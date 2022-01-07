
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int k; int p; scalar_t__ a; scalar_t__ M; } ;
typedef TYPE_1__ golomb_iterator ;


 scalar_t__ cur_bit ;
 int load_bit () ;

void golomb_iter_next (golomb_iterator *it) {
  if (it->len <= 0) {
    it->a = 0;
    return;
  }

  it->len--;

  int d = 0, i;
  while (cur_bit) {
    it->a -= it->M;
    load_bit();
  }
  load_bit();
  for (i = it->k; i > 1; i--) {
    d <<= 1;
    if (cur_bit) {
      d++;
    }
    load_bit();
  }
  if (d >= it->p) {
    d <<= 1;
    if (cur_bit) {
      d++;
    }
    load_bit();
    d -= it->p;
  }

  it->a -= d;
}
