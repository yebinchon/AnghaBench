
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ transaction_id; } ;
typedef TYPE_1__ transaction_t ;



__attribute__((used)) static int cmp_transaction (const void *a, const void *b) {
  const transaction_t *x = *((const transaction_t **) a), *y = *((const transaction_t **) b);
  if (x->transaction_id < y->transaction_id) {
    return -1;
  }
  if (x->transaction_id > y->transaction_id) {
    return 1;
  }
  return 0;
}
