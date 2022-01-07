
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* th_next; TYPE_1__* th_prev; } ;
typedef TYPE_2__ transaction_t ;
struct TYPE_4__ {struct TYPE_4__* th_prev; struct TYPE_4__* th_next; } ;


 int assert (int) ;

__attribute__((used)) static int remove_temp_transaction (transaction_t *T) {
  assert (T->th_next && T->th_prev);
  T->th_prev->th_next = T->th_next;
  T->th_next->th_prev = T->th_prev;
  T->th_prev = T->th_next = 0;
  return 0;
}
