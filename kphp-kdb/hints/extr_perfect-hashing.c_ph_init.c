
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mul1; scalar_t__ mul0; scalar_t__ d; int * sums; int * used; int * code; } ;
typedef TYPE_1__ perfect_hash ;


 int init_bits_cnt_table () ;

void ph_init (perfect_hash *h) {
  init_bits_cnt_table();
  h->code = ((void*)0);
  h->used = ((void*)0);
  h->sums = ((void*)0);
  h->d = 0;
  h->mul0 = 0;
  h->mul1 = 0;
}
